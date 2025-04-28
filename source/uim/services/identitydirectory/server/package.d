module uim.services.identitydirectory.server;

import uim.services.identitydirectory;
@safe:

class MainServer : RestAPI {
override: // usage of this handy D feature is highly recommended
  string getHello() {
    return "hello world!";
  }
}
