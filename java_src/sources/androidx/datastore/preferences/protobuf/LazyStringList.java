package androidx.datastore.preferences.protobuf;

import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public interface LazyStringList extends ProtocolStringList {
    Object getRaw(int i10);

    List<?> getUnderlyingElements();

    LazyStringList getUnmodifiableView();

    void h(ByteString byteString);
}
