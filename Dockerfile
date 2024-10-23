FROM python:3.9-slim-bullseye

RUN apt-get update && apt-get install -y nmap dos2unix && rm -rf /var/lib/apt/lists/*

# Create default user folder
RUN mkdir -p /home/pi

# Install dvl service
COPY playground_folder /home/pi/playground_folder
# COPY dvl-a50 /home/pi/dvl-a50
# make the python program unix
RUN dos2unix /home/pi/playground_folder/src/*
# RUN dos2unix /home/pi/dvl-a50/*
# RUN chmod +x /home/pi/playground_folder/src/*
# RUN cd /home/pi/dvl-a50 && pip3 install .

LABEL version="0.0.1"
# not using permission
# LABEL permissions='\
# {\
#  "ExposedPorts": {\
#    "9001/tcp": {}\
#   },\
#   "HostConfig": {\
#     "Binds":["/root/.config:/root/.config"],\
#     "ExtraHosts": [\
#       "host.docker.internal:host-gateway"\
#     ],\
#     "PortBindings": {\
#       "9001/tcp": [\
#         {\
#           "HostPort": ""\
#         }\
#       ]\
#     }\
#   }\
# }'
LABEL authors='[\
    {\
        "name": "Jason Jeremy",\
        "email": "jason@rovostech.com"\
    }\
]'
LABEL company='{\
        "about": "-",\
        "name": "Rovostech",\
        "email": "jason@rovostech.com"\
    }'
LABEL type="playground_extension_dvl"
LABEL tags='[\
        "playground_dvl",\
    ]'
LABEL readme='-'
LABEL links='{\
        "website": "-",\
        "support": "-"\
    }'
# no requirements
# LABEL requirements="core >= 1.1"

ENTRYPOINT ["/home/pi/playground_folder/src/main.py"]
