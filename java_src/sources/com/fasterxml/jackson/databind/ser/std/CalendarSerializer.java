package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import java.io.IOException;
import java.text.DateFormat;
import java.util.Calendar;

/* JADX INFO: loaded from: classes11.dex */
@JacksonStdImpl
public class CalendarSerializer extends DateTimeSerializerBase<Calendar> {
    public static final CalendarSerializer instance = new CalendarSerializer();

    public CalendarSerializer() {
        this(false, null);
    }

    public CalendarSerializer(boolean z6, DateFormat dateFormat) {
        super(Calendar.class, z6, dateFormat);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.fasterxml.jackson.databind.ser.std.DateTimeSerializerBase
    public long _timestamp(Calendar calendar) {
        if (calendar == null) {
            return 0L;
        }
        return calendar.getTimeInMillis();
    }

    @Override // com.fasterxml.jackson.databind.ser.std.DateTimeSerializerBase, com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.JsonSerializer
    public void serialize(Calendar calendar, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        if (this._useTimestamp) {
            jsonGenerator.writeNumber(_timestamp(calendar));
            return;
        }
        DateFormat dateFormat = this._customFormat;
        if (dateFormat == null) {
            serializerProvider.defaultSerializeDateValue(calendar.getTime(), jsonGenerator);
        } else {
            synchronized (dateFormat) {
                jsonGenerator.writeString(this._customFormat.format(calendar.getTime()));
            }
        }
    }

    @Override // com.fasterxml.jackson.databind.ser.std.DateTimeSerializerBase
    /* JADX INFO: renamed from: withFormat */
    public DateTimeSerializerBase<Calendar> withFormat2(boolean z6, DateFormat dateFormat) {
        return z6 ? new CalendarSerializer(true, null) : new CalendarSerializer(false, dateFormat);
    }
}
