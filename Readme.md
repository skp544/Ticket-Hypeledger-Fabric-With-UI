## <a name="tech-stack">⚙️ Tech Stack</a>

- React.js
- TailwindCSS
- JavaScript
- Blockchain
- Hyperledger Fabric
- Docker
- Node.js

## <a name="quick-start">🤸 Quick Start</a>

Follow these steps to set up the project locally on your machine.

**Prerequisites**

- [Git](https://git-scm.com/)
- [Node.js](https://nodejs.org/en)
- [npm](https://www.npmjs.com/) (Node Package Manager)
- [Docker](https://www.docker.com/)
- [Docker Compose](https://docs.docker.com/compose/)

**Cloning the Repository**

```bash
git clone https://github.com/skp544/Ticket-Hypeledger-Fabric-With-UI.git
cd Ticket-Hypeledger-Fabric-With-UI.git/Blockchain


```

**Starting the Network**

```bash
cd artifacts/channel

./create-artifacts.sh

cd ../

docker-compose up -d

cd ..

cd artifacts/src/github.com/TicketContract

npm i
```

**Creating channel and deploy contract**

```bash
cd ../../../../

./createChannel.sh

./deploy_ch1_ticketcontract.sh
```

**Starting the API Server**

```bash
cd api-2.0/config

./generate-ccp.sh

cd ..

npm i

npm start
```

Open [http://localhost:4000](http://localhost:4000) in your browser to view the api.

**Starting the Frontend**

```bash

cd UI

npm i

npm run dev
```

Open [http://localhost:5173](http://localhost:5173) in your browser to view the app.
