package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import java.io.IOException;
import java.text.DateFormat;
import java.util.Date;

/* JADX INFO: loaded from: classes7.dex */
@JacksonStdImpl
public class DateSerializer extends DateTimeSerializerBase<Date> {
    public static final DateSerializer instance = new DateSerializer();

    public DateSerializer() {
        this(false, null);
    }

    public DateSerializer(boolean z6, DateFormat dateFormat) {
        super(Date.class, z6, dateFormat);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.fasterxml.jackson.databind.ser.std.DateTimeSerializerBase
    public long _timestamp(Date date) {
        if (date == null) {
            return 0L;
        }
        return date.getTime();
    }

    @Override // com.fasterxml.jackson.databind.ser.std.DateTimeSerializerBase, com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.JsonSerializer
    public void serialize(Date date, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        if (this._useTimestamp) {
            jsonGenerator.writeNumber(_timestamp(date));
            return;
        }
        DateFormat dateFormat = this._customFormat;
        if (dateFormat == null) {
            serializerProvider.defaultSerializeDateValue(date, jsonGenerator);
        } else {
            synchronized (dateFormat) {
                jsonGenerator.writeString(this._customFormat.format(date));
            }
        }
    }

    @Override // com.fasterxml.jackson.databind.ser.std.DateTimeSerializerBase
    /* JADX INFO: renamed from: withFormat, reason: merged with bridge method [inline-methods] */
    public DateTimeSerializerBase<Date> withFormat2(boolean z6, DateFormat dateFormat) {
        return z6 ? new DateSerializer(true, null) : new DateSerializer(false, dateFormat);
    }
}
