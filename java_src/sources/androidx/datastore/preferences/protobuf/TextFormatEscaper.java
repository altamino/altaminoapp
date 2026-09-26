package androidx.datastore.preferences.protobuf;

import kotlinx.serialization.json.internal.b;

/* JADX INFO: loaded from: classes10.dex */
final class TextFormatEscaper {

    /* JADX INFO: renamed from: androidx.datastore.preferences.protobuf.TextFormatEscaper$2, reason: invalid class name */
    final class AnonymousClass2 implements ByteSequence {
        final /* synthetic */ byte[] val$input;

        @Override // androidx.datastore.preferences.protobuf.TextFormatEscaper.ByteSequence
        public byte byteAt(int i10) {
            return this.val$input[i10];
        }

        @Override // androidx.datastore.preferences.protobuf.TextFormatEscaper.ByteSequence
        public int size() {
            return this.val$input.length;
        }
    }

    private interface ByteSequence {
        byte byteAt(int i10);

        int size();
    }

    static String a(final ByteString byteString) {
        return b(new ByteSequence() { // from class: androidx.datastore.preferences.protobuf.TextFormatEscaper.1
            @Override // androidx.datastore.preferences.protobuf.TextFormatEscaper.ByteSequence
            public byte byteAt(int i10) {
                return byteString.d(i10);
            }

            @Override // androidx.datastore.preferences.protobuf.TextFormatEscaper.ByteSequence
            public int size() {
                return byteString.size();
            }
        });
    }

    static String b(ByteSequence byteSequence) {
        StringBuilder sb = new StringBuilder(byteSequence.size());
        for (int i10 = 0; i10 < byteSequence.size(); i10++) {
            byte bByteAt = byteSequence.byteAt(i10);
            if (bByteAt == 34) {
                sb.append("\\\"");
            } else if (bByteAt == 39) {
                sb.append("\\'");
            } else if (bByteAt != 92) {
                switch (bByteAt) {
                    case 7:
                        sb.append("\\a");
                        break;
                    case 8:
                        sb.append("\\b");
                        break;
                    case 9:
                        sb.append("\\t");
                        break;
                    case 10:
                        sb.append("\\n");
                        break;
                    case 11:
                        sb.append("\\v");
                        break;
                    case 12:
                        sb.append("\\f");
                        break;
                    case 13:
                        sb.append("\\r");
                        break;
                    default:
                        if (bByteAt < 32 || bByteAt > 126) {
                            sb.append(b.STRING_ESC);
                            sb.append((char) (((bByteAt >>> 6) & 3) + 48));
                            sb.append((char) (((bByteAt >>> 3) & 7) + 48));
                            sb.append((char) ((bByteAt & 7) + 48));
                        } else {
                            sb.append((char) bByteAt);
                        }
                        break;
                }
            } else {
                sb.append("\\\\");
            }
        }
        return sb.toString();
    }

    private TextFormatEscaper() {
    }

    static String c(String str) {
        return a(ByteString.q(str));
    }
}
