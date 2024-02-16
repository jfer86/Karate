function handleResponse(response) {
    if (response == null) {
        karate.set('responseStatus', 404);
        karate.set('response', { "error": "ID no encontrado" });
    } else {
        karate.set('responseStatus', 200);
        karate.set('response', response);
    }
    karate.abort();
}