HUGO_VERSION=0.122.0
S3DEPLOY_VERSION=2.3.2

set -x
set -e

mkdir tarballs
cd tarballs

wget "https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_Linux-64bit.tar.gz"
tar xvzf "hugo_${HUGO_VERSION}_Linux-64bit.tar.gz"
cp hugo ../hugo

wget "https://github.com/bep/s3deploy/releases/download/v${S3DEPLOY_VERSION}/s3deploy_${S3DEPLOY_VERSION}_Linux-64bit.tar.gz"
tar xzvf "s3deploy_${S3DEPLOY_VERSION}_Linux-64bit.tar.gz"
cp s3deploy ../s3deploy

cd ..
rm -rf tarballs
