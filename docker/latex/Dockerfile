FROM paperist/texlive-ja:latest

RUN set -x \
  && apt-get update && apt-get install -y locales \
  && echo "ja_JP UTF-8" > /etc/locale.gen \
  && locale-gen \
  && echo "export LANG='ja_JP.UTF-8'" >> /root/.bashrc \
  && apt-get -y clean \
  && rm -rf /var/lib/apt/lists/**

RUN set -x \
  && tlmgr update --self --all \
  && tlmgr install siunitx mhchem
