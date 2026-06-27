package com.narvii.link.snippet;

import android.graphics.Bitmap;
import android.view.View;
import com.narvii.app.NVContext;
import com.narvii.link.view.ExternalLinkSnippetView;
import com.narvii.model.LinkSummary;
import com.narvii.util.Callback;

/* loaded from: classes.dex */
public class ExternalLinkSnippet extends LinkSnippet {
    LinkSummary linkSummary;

    public ExternalLinkSnippet(NVContext nVContext, LinkSummary linkSummary) {
        super(nVContext);
        this.linkSummary = linkSummary;
    }

    @Override // com.narvii.link.snippet.LinkSnippet
    protected View getView() {
        ExternalLinkSnippetView externalLinkSnippetView = new ExternalLinkSnippetView(this.context);
        externalLinkSnippetView.setLinkSummary(this.linkSummary);
        return externalLinkSnippetView;
    }

    @Override // com.narvii.link.snippet.LinkSnippet
    public void getSnippetBitmap(Callback<Bitmap> callback) throws NoSuchFieldException {
        getBitmapByObject(callback);
    }
}
