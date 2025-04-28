module uim.services.identitydirectory.interfaces;

import uim.services.identitydirectory;
@safe:

@path("/api/")
interface RestAPI {
    string getHello();
}