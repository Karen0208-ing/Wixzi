module.exports = ({ env }) => {
  const uploadProvider = env('UPLOAD_PROVIDER');

  // Configurar los dominios permitidos según el proveedor
  const imgSrc = [
    "'self'",
    'data:',
    'blob:',
    'market-assets.strapi.io',
  ];

  const mediaSrc = [
    "'self'",
    'data:',
    'blob:',
    'market-assets.strapi.io',
  ];

  if (uploadProvider === 'cloudflare') {
    imgSrc.push('imagedelivery.net');               // Visualización de imágenes
    imgSrc.push('*.imagedelivery.net');            // Subdominios de Cloudflare Images
    imgSrc.push('api.cloudflare.com');             // API de Cloudflare
    mediaSrc.push('imagedelivery.net');
    mediaSrc.push('*.imagedelivery.net');
    mediaSrc.push('api.cloudflare.com');
  } else if (uploadProvider === 'cloudinary') {
    imgSrc.push('res.cloudinary.com');              // Visualización de imágenes de Cloudinary
    imgSrc.push('*.cloudinary.com');               // Subdominios de Cloudinary
    mediaSrc.push('res.cloudinary.com');
    mediaSrc.push('*.cloudinary.com');
  }

  return [
    'strapi::logger',
    'strapi::errors',
    {
      name: 'strapi::security',
      config: {
        contentSecurityPolicy: {
          useDefaults: true,
          directives: {
            'connect-src': ["'self'", 'https:', 'api.cloudflare.com', 'res.cloudinary.com'],
            'img-src': imgSrc,
            'media-src': mediaSrc,
            upgradeInsecureRequests: null,
          },
        },
      },
    },
    'strapi::cors',
    'strapi::poweredBy',
    'strapi::query',
    'strapi::body',
    'strapi::session',
    'strapi::favicon',
    'strapi::public',
  ];
};

// 🔥 Ahora: 
// - Si `UPLOAD_PROVIDER` es 'cloudinary', permite cargar imágenes desde Cloudinary.
// - Si es 'cloudflare', habilita los dominios necesarios para Cloudflare Images.
// - Asegúrate de reiniciar Strapi después de los cambios:
//   npm run develop

// ¿Te parece bien así o ajustamos algo más? 🚀
