package com.narvii.model.api;

import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.model.Item;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes3.dex */
public class CategoryPreviewResponse extends ApiResponse {

    @JsonDeserialize(using = PreviewDeserializer.class)
    public HashMap<String, List<Item>> itemPreviews;

    public static class PreviewDeserializer extends JsonDeserializer<HashMap<String, List<Item>>> {
        /* JADX WARN: Code restructure failed: missing block: B:14:0x002c, code lost:
        
            if (r3 == null) goto L28;
         */
        /* JADX WARN: Code restructure failed: missing block: B:15:0x002e, code lost:
        
            if (r4 == null) goto L29;
         */
        /* JADX WARN: Code restructure failed: missing block: B:16:0x0030, code lost:
        
            r0.put(r3, r4);
         */
        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.util.HashMap<java.lang.String, java.util.List<com.narvii.model.Item>> deserialize(com.fasterxml.jackson.core.JsonParser r8, com.fasterxml.jackson.databind.DeserializationContext r9) throws java.io.IOException {
            /*
                r7 = this;
                java.util.HashMap r0 = new java.util.HashMap
                r0.<init>()
                com.narvii.model.Feed$FeedDeserializer r1 = new com.narvii.model.Feed$FeedDeserializer
                r1.<init>()
                r2 = 0
            Lb:
                r3 = r2
                r4 = r3
            Ld:
                com.fasterxml.jackson.core.JsonToken r5 = r8.nextToken()
                com.fasterxml.jackson.core.JsonToken r6 = com.fasterxml.jackson.core.JsonToken.END_OBJECT
                if (r5 == r6) goto L48
                com.fasterxml.jackson.core.JsonToken r6 = com.fasterxml.jackson.core.JsonToken.FIELD_NAME
                if (r6 != r5) goto L1e
                java.lang.String r3 = r8.getCurrentName()
                goto Ld
            L1e:
                com.fasterxml.jackson.core.JsonToken r6 = com.fasterxml.jackson.core.JsonToken.START_ARRAY
                if (r6 != r5) goto L28
                java.util.ArrayList r4 = new java.util.ArrayList
                r4.<init>()
                goto Ld
            L28:
                com.fasterxml.jackson.core.JsonToken r6 = com.fasterxml.jackson.core.JsonToken.END_ARRAY
                if (r6 != r5) goto L34
                if (r3 == 0) goto Lb
                if (r4 == 0) goto Lb
                r0.put(r3, r4)
                goto Lb
            L34:
                com.fasterxml.jackson.core.JsonToken r6 = com.fasterxml.jackson.core.JsonToken.START_OBJECT
                if (r6 != r5) goto Ld
                com.narvii.model.Feed r5 = r1.deserialize(r8, r9)
                boolean r6 = r5 instanceof com.narvii.model.Item
                if (r6 == 0) goto Ld
                if (r4 == 0) goto Ld
                com.narvii.model.Item r5 = (com.narvii.model.Item) r5
                r4.add(r5)
                goto Ld
            L48:
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.narvii.model.api.CategoryPreviewResponse.PreviewDeserializer.deserialize(com.fasterxml.jackson.core.JsonParser, com.fasterxml.jackson.databind.DeserializationContext):java.util.HashMap");
        }
    }
}
