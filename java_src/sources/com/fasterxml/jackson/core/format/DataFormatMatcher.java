package com.fasterxml.jackson.core.format;

import com.fasterxml.jackson.core.JsonFactory;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.io.MergedStream;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes10.dex */
public class DataFormatMatcher {
    protected final byte[] _bufferedData;
    protected final int _bufferedLength;
    protected final int _bufferedStart;
    protected final JsonFactory _match;
    protected final MatchStrength _matchStrength;
    protected final InputStream _originalStream;

    public JsonFactory getMatch() {
        return this._match;
    }

    public boolean hasMatch() {
        return this._match != null;
    }

    public JsonParser createParserWithMatch() throws IOException {
        JsonFactory jsonFactory = this._match;
        if (jsonFactory == null) {
            return null;
        }
        return this._originalStream == null ? jsonFactory.createParser(this._bufferedData, this._bufferedStart, this._bufferedLength) : jsonFactory.createParser(getDataStream());
    }

    public InputStream getDataStream() {
        return this._originalStream == null ? new ByteArrayInputStream(this._bufferedData, this._bufferedStart, this._bufferedLength) : new MergedStream(null, this._originalStream, this._bufferedData, this._bufferedStart, this._bufferedLength);
    }

    public MatchStrength getMatchStrength() {
        MatchStrength matchStrength = this._matchStrength;
        return matchStrength == null ? MatchStrength.INCONCLUSIVE : matchStrength;
    }

    public String getMatchedFormatName() {
        return this._match.getFormatName();
    }

    protected DataFormatMatcher(InputStream inputStream, byte[] bArr, int i10, int i11, JsonFactory jsonFactory, MatchStrength matchStrength) {
        this._originalStream = inputStream;
        this._bufferedData = bArr;
        this._bufferedStart = i10;
        this._bufferedLength = i11;
        this._match = jsonFactory;
        this._matchStrength = matchStrength;
    }
}
