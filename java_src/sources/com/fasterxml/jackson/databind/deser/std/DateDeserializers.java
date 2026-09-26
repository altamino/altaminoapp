package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import com.fasterxml.jackson.databind.deser.ContextualDeserializer;
import com.fasterxml.jackson.databind.util.StdDateFormat;
import java.io.IOException;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashSet;
import java.util.Locale;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes5.dex */
public class DateDeserializers {
    private static final HashSet<String> _classNames = new HashSet<>();

    @JacksonStdImpl
    public static class CalendarDeserializer extends DateBasedDeserializer<Calendar> {
        protected final Class<? extends Calendar> _calendarClass;
        public static final CalendarDeserializer instance = new CalendarDeserializer();
        public static final CalendarDeserializer gregorianInstance = new CalendarDeserializer(GregorianCalendar.class);

        public CalendarDeserializer() {
            super(Calendar.class);
            this._calendarClass = null;
        }

        public CalendarDeserializer(Class<? extends Calendar> cls) {
            super(cls);
            this._calendarClass = cls;
        }

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        public Calendar deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            Date date_parseDate = _parseDate(jsonParser, deserializationContext);
            if (date_parseDate == null) {
                return null;
            }
            Class<? extends Calendar> cls = this._calendarClass;
            if (cls == null) {
                return deserializationContext.constructCalendar(date_parseDate);
            }
            try {
                Calendar calendarNewInstance = cls.newInstance();
                calendarNewInstance.setTimeInMillis(date_parseDate.getTime());
                TimeZone timeZone = deserializationContext.getTimeZone();
                if (timeZone != null) {
                    calendarNewInstance.setTimeZone(timeZone);
                }
                return calendarNewInstance;
            } catch (Exception e) {
                throw deserializationContext.instantiationException(this._calendarClass, e);
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.fasterxml.jackson.databind.deser.std.DateDeserializers.DateBasedDeserializer
        /* JADX INFO: renamed from: withDateFormat, reason: merged with bridge method [inline-methods] */
        public DateBasedDeserializer<Calendar> withDateFormat2(DateFormat dateFormat, String str) {
            return new CalendarDeserializer(this, dateFormat, str);
        }

        public CalendarDeserializer(CalendarDeserializer calendarDeserializer, DateFormat dateFormat, String str) {
            super(calendarDeserializer, dateFormat, str);
            this._calendarClass = calendarDeserializer._calendarClass;
        }

        @Override // com.fasterxml.jackson.databind.deser.std.DateDeserializers.DateBasedDeserializer, com.fasterxml.jackson.databind.deser.ContextualDeserializer
        public /* bridge */ /* synthetic */ JsonDeserializer createContextual(DeserializationContext deserializationContext, BeanProperty beanProperty) throws JsonMappingException {
            return super.createContextual(deserializationContext, beanProperty);
        }
    }

    protected static abstract class DateBasedDeserializer<T> extends StdScalarDeserializer<T> implements ContextualDeserializer {
        protected final DateFormat _customFormat;
        protected final String _formatString;

        protected DateBasedDeserializer(Class<?> cls) {
            super(cls);
            this._customFormat = null;
            this._formatString = null;
        }

        /* JADX INFO: renamed from: withDateFormat */
        protected abstract DateBasedDeserializer<T> withDateFormat2(DateFormat dateFormat, String str);

        protected DateBasedDeserializer(DateBasedDeserializer<T> dateBasedDeserializer, DateFormat dateFormat, String str) {
            super(dateBasedDeserializer._valueClass);
            this._customFormat = dateFormat;
            this._formatString = str;
        }

        @Override // com.fasterxml.jackson.databind.deser.std.StdDeserializer
        protected Date _parseDate(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            Date date;
            if (this._customFormat == null || jsonParser.getCurrentToken() != JsonToken.VALUE_STRING) {
                return super._parseDate(jsonParser, deserializationContext);
            }
            String strTrim = jsonParser.getText().trim();
            if (strTrim.length() == 0) {
                return (Date) getEmptyValue();
            }
            synchronized (this._customFormat) {
                try {
                    try {
                        date = this._customFormat.parse(strTrim);
                    } catch (ParseException e) {
                        throw new IllegalArgumentException("Failed to parse Date value '" + strTrim + "' (format: \"" + this._formatString + "\"): " + e.getMessage());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return date;
        }

        public JsonDeserializer<?> createContextual(DeserializationContext deserializationContext, BeanProperty beanProperty) throws JsonMappingException {
            JsonFormat.Value valueFindFormat;
            DateFormat dateFormatWithTimeZone;
            if (beanProperty != null && (valueFindFormat = deserializationContext.getAnnotationIntrospector().findFormat(beanProperty.getMember())) != null) {
                TimeZone timeZone = valueFindFormat.getTimeZone();
                String pattern = valueFindFormat.getPattern();
                if (pattern.length() > 0) {
                    Locale locale = valueFindFormat.getLocale();
                    if (locale == null) {
                        locale = deserializationContext.getLocale();
                    }
                    SimpleDateFormat simpleDateFormat = new SimpleDateFormat(pattern, locale);
                    if (timeZone == null) {
                        timeZone = deserializationContext.getTimeZone();
                    }
                    simpleDateFormat.setTimeZone(timeZone);
                    return withDateFormat2(simpleDateFormat, pattern);
                }
                if (timeZone != null) {
                    DateFormat dateFormat = deserializationContext.getConfig().getDateFormat();
                    if (dateFormat.getClass() == StdDateFormat.class) {
                        dateFormatWithTimeZone = ((StdDateFormat) dateFormat).withTimeZone(timeZone);
                    } else {
                        dateFormatWithTimeZone = (DateFormat) dateFormat.clone();
                        dateFormatWithTimeZone.setTimeZone(timeZone);
                    }
                    return withDateFormat2(dateFormatWithTimeZone, pattern);
                }
            }
            return this;
        }
    }

    public static class DateDeserializer extends DateBasedDeserializer<Date> {
        public static final DateDeserializer instance = new DateDeserializer();

        public DateDeserializer() {
            super(Date.class);
        }

        public DateDeserializer(DateDeserializer dateDeserializer, DateFormat dateFormat, String str) {
            super(dateDeserializer, dateFormat, str);
        }

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        public Date deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            return _parseDate(jsonParser, deserializationContext);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.fasterxml.jackson.databind.deser.std.DateDeserializers.DateBasedDeserializer
        /* JADX INFO: renamed from: withDateFormat, reason: avoid collision after fix types in other method */
        public DateBasedDeserializer<Date> withDateFormat2(DateFormat dateFormat, String str) {
            return new DateDeserializer(this, dateFormat, str);
        }

        @Override // com.fasterxml.jackson.databind.deser.std.DateDeserializers.DateBasedDeserializer, com.fasterxml.jackson.databind.deser.ContextualDeserializer
        public /* bridge */ /* synthetic */ JsonDeserializer createContextual(DeserializationContext deserializationContext, BeanProperty beanProperty) throws JsonMappingException {
            return super.createContextual(deserializationContext, beanProperty);
        }
    }

    public static class SqlDateDeserializer extends DateBasedDeserializer<java.sql.Date> {
        public static final SqlDateDeserializer instance = new SqlDateDeserializer();

        public SqlDateDeserializer() {
            super(java.sql.Date.class);
        }

        public SqlDateDeserializer(SqlDateDeserializer sqlDateDeserializer, DateFormat dateFormat, String str) {
            super(sqlDateDeserializer, dateFormat, str);
        }

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        public java.sql.Date deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            Date date_parseDate = _parseDate(jsonParser, deserializationContext);
            if (date_parseDate == null) {
                return null;
            }
            return new java.sql.Date(date_parseDate.getTime());
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.fasterxml.jackson.databind.deser.std.DateDeserializers.DateBasedDeserializer
        /* JADX INFO: renamed from: withDateFormat, reason: avoid collision after fix types in other method */
        public DateBasedDeserializer<java.sql.Date> withDateFormat2(DateFormat dateFormat, String str) {
            return new SqlDateDeserializer(this, dateFormat, str);
        }

        @Override // com.fasterxml.jackson.databind.deser.std.DateDeserializers.DateBasedDeserializer, com.fasterxml.jackson.databind.deser.ContextualDeserializer
        public /* bridge */ /* synthetic */ JsonDeserializer createContextual(DeserializationContext deserializationContext, BeanProperty beanProperty) throws JsonMappingException {
            return super.createContextual(deserializationContext, beanProperty);
        }
    }

    protected static class TimeZoneDeserializer extends FromStringDeserializer<TimeZone> {
        public static final TimeZoneDeserializer instance = new TimeZoneDeserializer();

        public TimeZoneDeserializer() {
            super(TimeZone.class);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.fasterxml.jackson.databind.deser.std.FromStringDeserializer
        public TimeZone _deserialize(String str, DeserializationContext deserializationContext) throws IOException {
            return TimeZone.getTimeZone(str);
        }
    }

    public static class TimestampDeserializer extends DateBasedDeserializer<Timestamp> {
        public static final TimestampDeserializer instance = new TimestampDeserializer();

        public TimestampDeserializer() {
            super(Timestamp.class);
        }

        public TimestampDeserializer(TimestampDeserializer timestampDeserializer, DateFormat dateFormat, String str) {
            super(timestampDeserializer, dateFormat, str);
        }

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        public Timestamp deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            return new Timestamp(_parseDate(jsonParser, deserializationContext).getTime());
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.fasterxml.jackson.databind.deser.std.DateDeserializers.DateBasedDeserializer
        /* JADX INFO: renamed from: withDateFormat, reason: avoid collision after fix types in other method */
        public DateBasedDeserializer<Timestamp> withDateFormat2(DateFormat dateFormat, String str) {
            return new TimestampDeserializer(this, dateFormat, str);
        }

        @Override // com.fasterxml.jackson.databind.deser.std.DateDeserializers.DateBasedDeserializer, com.fasterxml.jackson.databind.deser.ContextualDeserializer
        public /* bridge */ /* synthetic */ JsonDeserializer createContextual(DeserializationContext deserializationContext, BeanProperty beanProperty) throws JsonMappingException {
            return super.createContextual(deserializationContext, beanProperty);
        }
    }

    static {
        Class[] clsArr = {Calendar.class, GregorianCalendar.class, java.sql.Date.class, Date.class, Timestamp.class, TimeZone.class};
        for (int i10 = 0; i10 < 6; i10++) {
            _classNames.add(clsArr[i10].getName());
        }
    }

    public static JsonDeserializer<?> find(Class<?> cls, String str) {
        if (!_classNames.contains(str)) {
            return null;
        }
        if (cls == Calendar.class) {
            return CalendarDeserializer.instance;
        }
        if (cls == Date.class) {
            return DateDeserializer.instance;
        }
        if (cls == java.sql.Date.class) {
            return SqlDateDeserializer.instance;
        }
        if (cls == Timestamp.class) {
            return TimestampDeserializer.instance;
        }
        if (cls == TimeZone.class) {
            return TimeZoneDeserializer.instance;
        }
        if (cls == GregorianCalendar.class) {
            return CalendarDeserializer.gregorianInstance;
        }
        throw new IllegalArgumentException("Internal error: can't find deserializer for " + str);
    }
}
