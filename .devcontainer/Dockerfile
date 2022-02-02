# Ubuntu Official Image
FROM "matspfeiffer/flutter"

# install
ENV DEBIAN_FRONTEND="noninteractive"
RUN su root && sudo apt install -y --no-install-recommends wget && exit

# Install protoc binary and protoc_plugin for dart
ENV PROTOC_URL="https://github.com/protocolbuffers/protobuf/releases/download/v3.19.4/protoc-3.19.4-linux-x86_64.zip"
ENV PROTOC_PLUGIN_URL="https://github.com/google/protobuf.dart/archive/refs/tags/protoc_plugin-19.2.0+1.zip"
RUN mkdir -p /home/$USER/repos/ \
  && wget $PROTOC_URL -o /home/$USER/repos/protoc.zip \
  && wget $PROTOC_PLUGIN_URL -o /home/$USER/repos/protoc_plugin.zip \
#  && unzip /home/$USER/repos/protoc.zip -d /home/$USER/repos/protoc \
#  && unzip /home/$USER/repos/protoc_plugin.zip -d /home/$USER/repos/ \
#  && mv /home/$USER/repos/protoc/bin/* /usr/bin \
#  && mv /home/$USER/repos/protoc/include /usr/bin \
#  && mv /home/$USER/repos/protoc_plugin/protobuf.dart-protoc-plugin-19.2.0-1/protoc_plugin/bin/* /usr/bin \
#  && flutter run pub global activate protoc_plugin
