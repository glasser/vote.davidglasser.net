# It would be nice to use mise/asdf for s3deploy but there isn't an asdf plugin
# for it. I started to write one but got a bit stymied by the fact that the Mac
# version is now distributed as a pkg rather than a tarball. And we don't really
# need this outside of CI anyway. So let's just make this CI-specific even if
# we're installing Hugo with mise.

S3DEPLOY_VERSION=2.3.2

set -x
set -e

mkdir tarballs
cd tarballs

wget "https://github.com/bep/s3deploy/releases/download/v${S3DEPLOY_VERSION}/s3deploy_${S3DEPLOY_VERSION}_Linux-64bit.tar.gz"
tar xzvf "s3deploy_${S3DEPLOY_VERSION}_Linux-64bit.tar.gz"
cp s3deploy ../s3deploy

cd ..
rm -rf tarballs
