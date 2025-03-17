module.exports = ({ env }) => {
  const provider = env('UPLOAD_PROVIDER'); // Usa una variable de entorno para decidir

  if (provider === 'cloudinary') {
    return {
      upload: {
        config: {
          provider: 'cloudinary',
          providerOptions: {
            cloud_name: env('CLOUDINARY_NAME'),
            api_key: env('CLOUDINARY_KEY'),
            api_secret: env('CLOUDINARY_SECRET'),
          },
          actionOptions: {
            upload: {
              folder: 'Wixzi',
            },
            uploadStream: {
              folder: 'Wixzi',
            },
            delete: {},
          },
        },
      },
    };
  } else if (provider === 'cloudflare') {
    return {
      upload: {
        config: {
          provider: 'strapi-provider-upload-cloudflare',
          providerOptions: {
            accountId: env('STRAPI_UPLOAD_CLOUDFLARE_ACCOUNT_ID'),
            apiKey: env('STRAPI_UPLOAD_CLOUDFLARE_API_KEY'),
            variant: env('STRAPI_UPLOAD_CLOUDFLARE_VARIANT'),
          },
        },
      },
    };
  } else {
    throw new Error('No se ha especificado un proveedor de subida válido.');
  }
};
