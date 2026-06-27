package com.narvii.chat;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.support.v4.content.LocalBroadcastManager;
import com.narvii.account.AccountService;
import com.narvii.app.NVContext;
import com.narvii.config.ConfigService;
import com.narvii.model.ChatMessage;
import com.narvii.model.User;
import com.narvii.scene.poll.ScenePollPlayView;
import com.narvii.util.Utils;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.UUID;

/* loaded from: classes.dex */
public class MessageReadManager implements Runnable {
    private static final String DIR_NAME = "message_read";
    public static final long EXPIRE_DURATION = 259200000;
    public static final int MAX_ID_LIST_SIZE = 1000;
    private AccountService account;
    private ConfigService config;
    private int dirty;
    private File file;
    private LinkedHashSet<UUID> hashSet;
    private LocalBroadcastManager localBroadcastManager;
    NVContext nvContext;
    private UUID prevInsert;
    private final BroadcastReceiver receiver = new BroadcastReceiver() { // from class: com.narvii.chat.MessageReadManager.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (AccountService.ACTION_ACCOUNT_CHANGED.equals(intent.getAction())) {
                MessageReadManager messageReadManager = MessageReadManager.this;
                messageReadManager.resetSP(messageReadManager.account.getUserId(), MessageReadManager.this.config.getCommunityId());
            }
        }
    };

    public MessageReadManager(NVContext nVContext) {
        this.nvContext = nVContext;
        this.account = (AccountService) nVContext.getService("account");
        this.config = (ConfigService) nVContext.getService("config");
        this.localBroadcastManager = LocalBroadcastManager.getInstance(nVContext.getContext());
    }

    public void start() {
        resetSP(this.account.getUserId(), this.config.getCommunityId());
        this.localBroadcastManager.registerReceiver(this.receiver, new IntentFilter(AccountService.ACTION_ACCOUNT_CHANGED));
    }

    public void stop() {
        flush();
        resetSP(null, 0);
        this.localBroadcastManager.unregisterReceiver(this.receiver);
    }

    public void flush() {
        LinkedHashSet<UUID> linkedHashSet;
        if (this.dirty > 0) {
            File file = this.file;
            if (file != null && (linkedHashSet = this.hashSet) != null) {
                writeInBackground(file, linkedHashSet);
            }
            this.dirty = 0;
        }
    }

    public static void cleanCache(final Context context) {
        new Thread("clean_message_read") { // from class: com.narvii.chat.MessageReadManager.2
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                try {
                    File file = new File(context.getFilesDir(), MessageReadManager.DIR_NAME);
                    if (file.isDirectory()) {
                        long jCurrentTimeMillis = System.currentTimeMillis() - MessageReadManager.EXPIRE_DURATION;
                        for (File file2 : file.listFiles()) {
                            if (file2.lastModified() < jCurrentTimeMillis) {
                                file2.delete();
                            }
                        }
                    }
                } catch (Exception unused) {
                }
            }
        }.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resetSP(String str, int i) {
        this.file = str == null ? null : getFile(str, i);
        this.hashSet = null;
        this.prevInsert = null;
    }

    private File getFile(String str, int i) {
        File file = new File(this.nvContext.getContext().getFilesDir(), DIR_NAME);
        file.mkdir();
        return new File(file, str + "_" + i);
    }

    private void save(Set<UUID> set) {
        if (this.file == null) {
            return;
        }
        this.dirty++;
        Utils.handler.removeCallbacks(this);
        Utils.handler.postDelayed(this, ScenePollPlayView.POLL_COUNT_DOWN_MS);
    }

    @Override // java.lang.Runnable
    public void run() {
        LinkedHashSet<UUID> linkedHashSet;
        File file = this.file;
        if (file == null || (linkedHashSet = this.hashSet) == null || this.dirty == 0) {
            return;
        }
        writeInBackground(file, linkedHashSet);
        this.dirty = 0;
    }

    private static void writeInBackground(final File file, Collection<UUID> collection) {
        final ArrayList arrayList = new ArrayList(collection);
        new Thread("flush_message_read") { // from class: com.narvii.chat.MessageReadManager.3
            /* JADX WARN: Removed duplicated region for block: B:35:0x0061 A[EXC_TOP_SPLITTER, SYNTHETIC] */
            @Override // java.lang.Thread, java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void run() throws java.lang.Throwable {
                /*
                    r8 = this;
                    r0 = 0
                    r1 = 0
                    com.narvii.util.SafeFileOutputStream r2 = new com.narvii.util.SafeFileOutputStream     // Catch: java.lang.Throwable -> L39 java.lang.Exception -> L3e
                    java.io.File r3 = r2     // Catch: java.lang.Throwable -> L39 java.lang.Exception -> L3e
                    r2.<init>(r3)     // Catch: java.lang.Throwable -> L39 java.lang.Exception -> L3e
                    java.io.ObjectOutputStream r0 = new java.io.ObjectOutputStream     // Catch: java.lang.Exception -> L37 java.lang.Throwable -> L5e
                    r0.<init>(r2)     // Catch: java.lang.Exception -> L37 java.lang.Throwable -> L5e
                    java.util.ArrayList r3 = r3     // Catch: java.lang.Exception -> L37 java.lang.Throwable -> L5e
                    java.util.Iterator r3 = r3.iterator()     // Catch: java.lang.Exception -> L37 java.lang.Throwable -> L5e
                L14:
                    boolean r4 = r3.hasNext()     // Catch: java.lang.Exception -> L37 java.lang.Throwable -> L5e
                    if (r4 == 0) goto L2f
                    java.lang.Object r4 = r3.next()     // Catch: java.lang.Exception -> L37 java.lang.Throwable -> L5e
                    java.util.UUID r4 = (java.util.UUID) r4     // Catch: java.lang.Exception -> L37 java.lang.Throwable -> L5e
                    long r5 = r4.getMostSignificantBits()     // Catch: java.lang.Exception -> L37 java.lang.Throwable -> L5e
                    r0.writeLong(r5)     // Catch: java.lang.Exception -> L37 java.lang.Throwable -> L5e
                    long r4 = r4.getLeastSignificantBits()     // Catch: java.lang.Exception -> L37 java.lang.Throwable -> L5e
                    r0.writeLong(r4)     // Catch: java.lang.Exception -> L37 java.lang.Throwable -> L5e
                    goto L14
                L2f:
                    r0.close()     // Catch: java.lang.Exception -> L37 java.lang.Throwable -> L5e
                    r0 = 1
                    r2.close(r0)     // Catch: java.lang.Exception -> L5d
                    goto L5d
                L37:
                    r0 = move-exception
                    goto L42
                L39:
                    r2 = move-exception
                    r7 = r2
                    r2 = r0
                    r0 = r7
                    goto L5f
                L3e:
                    r2 = move-exception
                    r7 = r2
                    r2 = r0
                    r0 = r7
                L42:
                    java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L5e
                    r3.<init>()     // Catch: java.lang.Throwable -> L5e
                    java.lang.String r4 = "fail to write "
                    r3.append(r4)     // Catch: java.lang.Throwable -> L5e
                    java.io.File r4 = r2     // Catch: java.lang.Throwable -> L5e
                    r3.append(r4)     // Catch: java.lang.Throwable -> L5e
                    java.lang.String r3 = r3.toString()     // Catch: java.lang.Throwable -> L5e
                    com.narvii.util.Log.w(r3, r0)     // Catch: java.lang.Throwable -> L5e
                    if (r2 == 0) goto L5d
                    r2.close(r1)     // Catch: java.lang.Exception -> L5d
                L5d:
                    return
                L5e:
                    r0 = move-exception
                L5f:
                    if (r2 == 0) goto L64
                    r2.close(r1)     // Catch: java.lang.Exception -> L64
                L64:
                    goto L66
                L65:
                    throw r0
                L66:
                    goto L65
                */
                throw new UnsupportedOperationException("Method not decompiled: com.narvii.chat.MessageReadManager.AnonymousClass3.run():void");
            }
        }.start();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0070 A[Catch: Exception -> 0x008b, PHI: r2 r8
  0x0070: PHI (r2v9 ??) = (r2v8 ??), (r2v10 ??) binds: [B:33:0x006e, B:45:0x0087] A[DONT_GENERATE, DONT_INLINE]
  0x0070: PHI (r8v5 ??) = (r8v4 ??), (r8v6 ??) binds: [B:33:0x006e, B:45:0x0087] A[DONT_GENERATE, DONT_INLINE], TRY_LEAVE, TryCatch #3 {Exception -> 0x008b, blocks: (B:32:0x006b, B:34:0x0070, B:44:0x0084), top: B:54:0x0019 }] */
    /* JADX WARN: Type inference failed for: r2v1, types: [long] */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v11, types: [java.io.FileInputStream, java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r2v12 */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.io.FileInputStream] */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r2v9, types: [java.io.FileInputStream] */
    /* JADX WARN: Type inference failed for: r8v1, types: [java.util.UUID] */
    /* JADX WARN: Type inference failed for: r8v10 */
    /* JADX WARN: Type inference failed for: r8v11 */
    /* JADX WARN: Type inference failed for: r8v12 */
    /* JADX WARN: Type inference failed for: r8v13, types: [java.lang.Object, java.util.UUID] */
    /* JADX WARN: Type inference failed for: r8v14 */
    /* JADX WARN: Type inference failed for: r8v15 */
    /* JADX WARN: Type inference failed for: r8v16 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Type inference failed for: r8v6 */
    /* JADX WARN: Type inference failed for: r8v7 */
    /* JADX WARN: Type inference failed for: r8v8 */
    /* JADX WARN: Type inference failed for: r8v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.util.LinkedHashSet<java.util.UUID> get() throws java.lang.Throwable {
        /*
            r9 = this;
            java.io.File r0 = r9.file
            r1 = 0
            if (r0 != 0) goto L6
            return r1
        L6:
            java.util.LinkedHashSet<java.util.UUID> r0 = r9.hashSet
            if (r0 != 0) goto L8f
            java.util.LinkedHashSet r0 = new java.util.LinkedHashSet
            r0.<init>()
            java.io.File r2 = r9.file
            long r2 = r2.length()
            r4 = 0
            int r6 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r6 <= 0) goto L8a
            java.io.FileInputStream r2 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L4f java.io.EOFException -> L80
            java.io.File r3 = r9.file     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L4f java.io.EOFException -> L80
            r2.<init>(r3)     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L4f java.io.EOFException -> L80
            java.io.ObjectInputStream r3 = new java.io.ObjectInputStream     // Catch: java.lang.Exception -> L46 java.io.EOFException -> L4a java.lang.Throwable -> L74
            r3.<init>(r2)     // Catch: java.lang.Exception -> L46 java.io.EOFException -> L4a java.lang.Throwable -> L74
        L27:
            long r4 = r3.readLong()     // Catch: java.lang.Throwable -> L3c java.lang.Exception -> L3f java.io.EOFException -> L43
            long r6 = r3.readLong()     // Catch: java.lang.Throwable -> L3c java.lang.Exception -> L3f java.io.EOFException -> L43
            java.util.UUID r8 = new java.util.UUID     // Catch: java.lang.Throwable -> L3c java.lang.Exception -> L3f java.io.EOFException -> L43
            r8.<init>(r4, r6)     // Catch: java.lang.Throwable -> L3c java.lang.Exception -> L3f java.io.EOFException -> L43
            r0.add(r8)     // Catch: java.lang.Exception -> L39 java.lang.Throwable -> L3c java.io.EOFException -> L44
            r1 = r8
            goto L27
        L39:
            r1 = move-exception
            r4 = r1
            goto L41
        L3c:
            r0 = move-exception
            r1 = r3
            goto L75
        L3f:
            r4 = move-exception
            r8 = r1
        L41:
            r1 = r3
            goto L53
        L43:
            r8 = r1
        L44:
            r1 = r3
            goto L82
        L46:
            r3 = move-exception
            r8 = r1
            r4 = r3
            goto L53
        L4a:
            r8 = r1
            goto L82
        L4c:
            r0 = move-exception
            r2 = r1
            goto L75
        L4f:
            r2 = move-exception
            r8 = r1
            r4 = r2
            r2 = r8
        L53:
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L74
            r3.<init>()     // Catch: java.lang.Throwable -> L74
            java.lang.String r5 = "fail to read "
            r3.append(r5)     // Catch: java.lang.Throwable -> L74
            java.io.File r5 = r9.file     // Catch: java.lang.Throwable -> L74
            r3.append(r5)     // Catch: java.lang.Throwable -> L74
            java.lang.String r3 = r3.toString()     // Catch: java.lang.Throwable -> L74
            com.narvii.util.Log.w(r3, r4)     // Catch: java.lang.Throwable -> L74
            if (r1 == 0) goto L6e
            r1.close()     // Catch: java.lang.Exception -> L8b
        L6e:
            if (r2 == 0) goto L8b
        L70:
            r2.close()     // Catch: java.lang.Exception -> L8b
            goto L8b
        L74:
            r0 = move-exception
        L75:
            if (r1 == 0) goto L7a
            r1.close()     // Catch: java.lang.Exception -> L7f
        L7a:
            if (r2 == 0) goto L7f
            r2.close()     // Catch: java.lang.Exception -> L7f
        L7f:
            throw r0
        L80:
            r2 = r1
            r8 = r2
        L82:
            if (r1 == 0) goto L87
            r1.close()     // Catch: java.lang.Exception -> L8b
        L87:
            if (r2 == 0) goto L8b
            goto L70
        L8a:
            r8 = r1
        L8b:
            r9.hashSet = r0
            r9.prevInsert = r8
        L8f:
            java.util.LinkedHashSet<java.util.UUID> r0 = r9.hashSet
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.chat.MessageReadManager.get():java.util.LinkedHashSet");
    }

    public void setMessageRead(ChatMessage chatMessage) {
        String str = chatMessage.messageId;
        if (str == null) {
            return;
        }
        try {
            UUID uuidFromString = UUID.fromString(str);
            LinkedHashSet<UUID> linkedHashSet = get();
            if (linkedHashSet == null || uuidFromString.equals(this.prevInsert)) {
                return;
            }
            linkedHashSet.remove(uuidFromString);
            linkedHashSet.add(uuidFromString);
            int size = linkedHashSet.size() - 1000;
            if (size > 0) {
                Iterator<UUID> it = this.hashSet.iterator();
                for (int i = 0; i < size && it.hasNext(); i++) {
                    it.next();
                    it.remove();
                }
            }
            save(linkedHashSet);
        } catch (Exception unused) {
        }
    }

    public boolean isMessageRead(ChatMessage chatMessage) {
        LinkedHashSet<UUID> linkedHashSet;
        if (chatMessage.createdTime == null || chatMessage.id() == null || chatMessage.author == null) {
            return true;
        }
        try {
            UUID uuidFromString = UUID.fromString(chatMessage.messageId);
            String userId = ((AccountService) this.nvContext.getService("account")).getUserId();
            if (userId == null) {
                return true;
            }
            User user = chatMessage.author;
            if ((user == null || !Utils.isEqualsNotNull(userId, user.uid)) && System.currentTimeMillis() - chatMessage.createdTime.getTime() <= EXPIRE_DURATION && (linkedHashSet = get()) != null) {
                return linkedHashSet.contains(uuidFromString);
            }
            return true;
        } catch (Exception unused) {
            return true;
        }
    }
}
