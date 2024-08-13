FROM swr.cn-north-4.myhuaweicloud.com/group-cae/python:3.8

RUN mkdir -p /trade-algo-shandong-intraday-price-forecast

ADD . /trade-algo-shandong-intraday-price-forecast/

WORKDIR /trade-algo-shandong-intraday-price-forecast

RUN pip3 install pipreqs
RUN pipreqs --debug ./
RUN pip3 install -i https://mirrors.huaweicloud.com/repository/pypi/simple --upgrade pip
RUN pip3 install -i https://mirrors.huaweicloud.com/repository/pypi/simple loguru==0.5.3
RUN pip3 install -i https://mirrors.huaweicloud.com/repository/pypi/simple openpyxl==3.0.7
RUN pip3 install -i https://mirrors.huaweicloud.com/repository/pypi/simple APScheduler==3.10.4
RUN pip3 install -i https://mirrors.huaweicloud.com/repository/pypi/simple flask==2.0.1
RUN pip3 install -i https://mirrors.huaweicloud.com/repository/pypi/simple Flask_APScheduler
RUN pip3 install -i https://mirrors.huaweicloud.com/repository/pypi/simple gevent
RUN pip3 install -i https://mirrors.huaweicloud.com/repository/pypi/simple numpy
RUN pip3 install -i https://mirrors.huaweicloud.com/repository/pypi/simple pandas
RUN pip3 install -i https://mirrors.huaweicloud.com/repository/pypi/simple PyMySQL
RUN pip3 install -i https://mirrors.huaweicloud.com/repository/pypi/simple pytz
RUN pip3 install -i https://mirrors.huaweicloud.com/repository/pypi/simple PyYAML
RUN pip3 install -i https://mirrors.aliyun.com/pypi/simple scikit_learn
RUN pip3 install -i https://mirrors.huaweicloud.com/repository/pypi/simple Requests
RUN pip3 install -i https://mirrors.huaweicloud.com/repository/pypi/simple chinese_calendar
RUN pip3 install -i https://mirrors.huaweicloud.com/repository/pypi/simple xgboost==1.4.2
RUN pip3 install -i https://mirrors.aliyun.com/pypi/simple  PySCIPOpt==4.3.0

ENTRYPOINT ["python","app.py"]
