package com.narvii.scene.poll;

/* compiled from: PollExtension.kt */
/* loaded from: classes3.dex */
public final class PollExtensionKt {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x004e A[EDGE_INSN: B:42:0x004e->B:26:0x004e BREAK  A[LOOP:1: B:12:0x002e->B:47:?], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:47:? A[LOOP:1: B:12:0x002e->B:47:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v3, types: [java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void initPollPlayRecord(java.util.List<? extends com.narvii.model.story.ScenePollOrQuizHost> r8, java.util.HashMap<java.lang.String, com.narvii.scene.ScenePlayRecord> r9, boolean r10) {
        /*
            java.lang.String r0 = "map"
            kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r9, r0)
            r9.clear()
            if (r8 == 0) goto L79
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            java.util.Iterator r8 = r8.iterator()
        L13:
            boolean r1 = r8.hasNext()
            if (r1 == 0) goto L5f
            java.lang.Object r1 = r8.next()
            com.narvii.model.story.ScenePollOrQuizHost r1 = (com.narvii.model.story.ScenePollOrQuizHost) r1
            com.narvii.model.PollAttach r2 = r1.getPoll()
            r3 = 0
            if (r2 == 0) goto L52
            java.util.List<com.narvii.model.PollOption> r2 = r2.polloptList
            if (r2 == 0) goto L52
            java.util.Iterator r2 = r2.iterator()
        L2e:
            boolean r4 = r2.hasNext()
            if (r4 == 0) goto L4d
            java.lang.Object r4 = r2.next()
            r5 = r4
            com.narvii.model.PollOption r5 = (com.narvii.model.PollOption) r5
            r6 = 1
            r7 = 0
            if (r10 == 0) goto L44
            int r5 = r5.globalVotedValue
            if (r5 <= 0) goto L49
            goto L4a
        L44:
            int r5 = r5.votedValue
            if (r5 <= 0) goto L49
            goto L4a
        L49:
            r6 = 0
        L4a:
            if (r6 == 0) goto L2e
            goto L4e
        L4d:
            r4 = r3
        L4e:
            r2 = r4
            com.narvii.model.PollOption r2 = (com.narvii.model.PollOption) r2
            goto L53
        L52:
            r2 = r3
        L53:
            if (r2 == 0) goto L59
            java.lang.String r3 = r1.id()
        L59:
            if (r3 == 0) goto L13
            r0.add(r3)
            goto L13
        L5f:
            java.util.Iterator r8 = r0.iterator()
        L63:
            boolean r10 = r8.hasNext()
            if (r10 == 0) goto L79
            java.lang.Object r10 = r8.next()
            java.lang.String r10 = (java.lang.String) r10
            com.narvii.scene.ScenePlayRecord r0 = new com.narvii.scene.ScenePlayRecord
            r1 = 2
            r0.<init>(r1)
            r9.put(r10, r0)
            goto L63
        L79:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.scene.poll.PollExtensionKt.initPollPlayRecord(java.util.List, java.util.HashMap, boolean):void");
    }
}
