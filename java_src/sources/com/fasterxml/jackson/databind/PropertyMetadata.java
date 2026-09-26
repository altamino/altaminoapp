package com.fasterxml.jackson.databind;

import java.io.Serializable;

/* JADX INFO: loaded from: classes11.dex */
public class PropertyMetadata implements Serializable {
    private static final long serialVersionUID = -1;
    protected final String _description;
    protected final Boolean _required;
    public static final PropertyMetadata STD_REQUIRED = new PropertyMetadata(Boolean.TRUE, null);
    public static final PropertyMetadata STD_OPTIONAL = new PropertyMetadata(Boolean.FALSE, null);
    public static final PropertyMetadata STD_REQUIRED_OR_OPTIONAL = new PropertyMetadata(null, null);

    public String getDescription() {
        return this._description;
    }

    public Boolean getRequired() {
        return this._required;
    }

    public static PropertyMetadata construct(boolean z6, String str) {
        PropertyMetadata propertyMetadata = z6 ? STD_REQUIRED : STD_OPTIONAL;
        return str != null ? propertyMetadata.withDescription(str) : propertyMetadata;
    }

    public boolean isRequired() {
        Boolean bool = this._required;
        return bool != null && bool.booleanValue();
    }

    protected Object readResolve() {
        if (this._description != null) {
            return this;
        }
        Boolean bool = this._required;
        if (bool == null) {
            return STD_REQUIRED_OR_OPTIONAL;
        }
        return bool.booleanValue() ? STD_REQUIRED : STD_OPTIONAL;
    }

    public PropertyMetadata withDescription(String str) {
        return new PropertyMetadata(this._required, str);
    }

    public PropertyMetadata withRequired(Boolean bool) {
        if (bool != null) {
            Boolean bool2 = this._required;
            if (bool2 != null && bool2.booleanValue() == bool.booleanValue()) {
                return this;
            }
        } else if (this._required == null) {
            return this;
        }
        return new PropertyMetadata(bool, this._description);
    }

    protected PropertyMetadata(Boolean bool, String str) {
        this._required = bool;
        this._description = str;
    }
}
