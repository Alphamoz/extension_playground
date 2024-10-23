FROM python:3.9-slim-bullseye

RUN apt-get update && apt-get install -y nmap dos2unix && rm -rf /var/lib/apt/lists/*

# Create default user folder
RUN mkdir -p /home/pi

# Install dvl service
COPY playground_folder /home/pi/playground_folder

# make the python program unix because its made in windows
RUN dos2unix /home/pi/playground_folder/src/*


LABEL version="0.0.1"

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

ENTRYPOINT ["/home/pi/playground_folder/src/main.py"]
