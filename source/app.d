import uim.services.identitydirectory;

int main(string[] args) {
	auto router = new URLRouter;
	registerRestInterface(router, new MainServer());

	auto settings = new HTTPServerSettings();
	settings.port = 8080;
	settings.bindAddresses = ["::1", "127.0.0.1"];

	writeln(router.getAllRoutes());
	writeln("Starting server on port ", settings.port, "...");

	// Start the server
	auto listener = listenHTTP(settings, router);
	return runApplication(&args);
}
