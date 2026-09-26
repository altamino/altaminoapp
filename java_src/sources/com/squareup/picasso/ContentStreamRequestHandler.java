package com.squareup.picasso;

import android.content.Context;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import okio.Okio;

/* JADX INFO: loaded from: classes10.dex */
class ContentStreamRequestHandler extends RequestHandler {
    final Context context;

    @Override // com.squareup.picasso.RequestHandler
    public boolean canHandleRequest(Request request) {
        return "content".equals(request.uri.getScheme());
    }

    InputStream getInputStream(Request request) throws FileNotFoundException {
        return this.context.getContentResolver().openInputStream(request.uri);
    }

    ContentStreamRequestHandler(Context context) {
        this.context = context;
    }

    @Override // com.squareup.picasso.RequestHandler
    public RequestHandler.Result load(Request request, int i10) throws IOException {
        return new RequestHandler.Result(Okio.source(getInputStream(request)), Picasso.LoadedFrom.DISK);
    }
}
