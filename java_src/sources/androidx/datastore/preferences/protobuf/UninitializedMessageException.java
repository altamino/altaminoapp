package androidx.datastore.preferences.protobuf;

import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public class UninitializedMessageException extends RuntimeException {
    private static final long serialVersionUID = -7466929953374883507L;
    private final List<String> missingFields;

    public UninitializedMessageException(MessageLite messageLite) {
        super("Message was missing required fields.  (Lite runtime could not determine which fields were missing).");
        this.missingFields = null;
    }

    public UninitializedMessageException(List<String> list) {
        super(b(list));
        this.missingFields = list;
    }

    private static String b(List<String> list) {
        StringBuilder sb = new StringBuilder("Message missing required fields: ");
        boolean z6 = true;
        for (String str : list) {
            if (z6) {
                z6 = false;
            } else {
                sb.append(", ");
            }
            sb.append(str);
        }
        return sb.toString();
    }

    public InvalidProtocolBufferException a() {
        return new InvalidProtocolBufferException(getMessage());
    }
}
