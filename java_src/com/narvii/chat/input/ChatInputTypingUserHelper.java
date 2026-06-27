package com.narvii.chat.input;

import android.content.res.Resources;
import android.os.SystemClock;
import android.text.Editable;
import android.text.TextUtils;
import android.widget.EditText;
import android.widget.TextView;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.livelayer.LiveLayerService;
import com.narvii.livelayer.ws.LiveLayerEventListener;
import com.narvii.model.ChatThread;
import com.narvii.model.NVObject;
import com.narvii.model.User;
import com.narvii.util.Utils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public class ChatInputTypingUserHelper {
    private static final String TOPIC_RECORD_END = "users-end-recording-at";
    private static final String TOPIC_RECORD_START = "users-start-recording-at";
    private static final String TOPIC_TYPING_END = "users-end-typing-at";
    private static final String TOPIC_TYPING_START = "users-start-typing-at";
    private static final long TYPING_INTERVAL = 3000;
    private static final long TYPING_TIMEOUT = 10000;
    private AccountService accountService;
    private EditText edit;
    private long lastTypingReportTime;
    private LiveLayerService liveLayerService;
    private NVContext nvContext;
    private String reportTarget;
    private ChatThread thread;
    private String threadId;
    private TextView tvUserTyping;
    private boolean showTyping = true;
    private LiveLayerEventListener liveLayerEventListener = new LiveLayerEventListener() { // from class: com.narvii.chat.input.ChatInputTypingUserHelper.1
        @Override // com.narvii.livelayer.ws.LiveLayerEventListener
        public void onUserLeft(String str, List<User> list, int i) {
        }

        @Override // com.narvii.livelayer.ws.LiveLayerEventListener
        public void onUserJoined(String str, List<User> list, int i) throws Resources.NotFoundException {
            if (str == null) {
                return;
            }
            if (list != null && ChatInputTypingUserHelper.this.accountService != null) {
                Utils.removeId(list, ChatInputTypingUserHelper.this.accountService.getUserId());
            }
            if (list == null) {
                list = new ArrayList<>();
            }
            if (str.contains(ChatInputTypingUserHelper.TOPIC_TYPING_START)) {
                if (ChatInputTypingUserHelper.this.typingUser == null) {
                    ChatInputTypingUserHelper.this.typingUser = new ArrayList();
                }
                Iterator it = ChatInputTypingUserHelper.this.typingUser.iterator();
                while (it.hasNext()) {
                    Utils.removeId(list, ((User) it.next()).id());
                }
                ChatInputTypingUserHelper.this.typingUser.addAll(list);
                ChatInputTypingUserHelper.this.showTyping = true;
            } else if (str.contains(ChatInputTypingUserHelper.TOPIC_TYPING_END)) {
                if (ChatInputTypingUserHelper.this.typingUser != null) {
                    Iterator<User> it2 = list.iterator();
                    while (it2.hasNext()) {
                        Utils.removeId(ChatInputTypingUserHelper.this.typingUser, it2.next().id());
                    }
                }
            } else if (str.contains(ChatInputTypingUserHelper.TOPIC_RECORD_START)) {
                if (ChatInputTypingUserHelper.this.recordingUser == null) {
                    ChatInputTypingUserHelper.this.recordingUser = new ArrayList();
                }
                Iterator it3 = ChatInputTypingUserHelper.this.typingUser.iterator();
                while (it3.hasNext()) {
                    Utils.removeId(list, ((User) it3.next()).id());
                }
                ChatInputTypingUserHelper.this.recordingUser.addAll(list);
                ChatInputTypingUserHelper.this.showTyping = false;
            } else if (str.contains(ChatInputTypingUserHelper.TOPIC_RECORD_END) && ChatInputTypingUserHelper.this.recordingUser != null) {
                Iterator<User> it4 = list.iterator();
                while (it4.hasNext()) {
                    Utils.removeId(ChatInputTypingUserHelper.this.recordingUser, it4.next().id());
                }
            }
            if (ChatInputTypingUserHelper.this.showTyping && (ChatInputTypingUserHelper.this.typingUser == null || ChatInputTypingUserHelper.this.typingUser.size() == 0)) {
                ChatInputTypingUserHelper.this.showTyping = false;
            }
            ChatInputTypingUserHelper.this.updateTypingLayout();
        }
    };
    private Runnable typingTimeOutRunnable = new Runnable() { // from class: com.narvii.chat.input.ChatInputTypingUserHelper.2
        @Override // java.lang.Runnable
        public void run() {
            ChatInputTypingUserHelper.this.reportTypingEnd();
        }
    };
    private Runnable typingEndCheckRunnable = new Runnable() { // from class: com.narvii.chat.input.ChatInputTypingUserHelper.3
        @Override // java.lang.Runnable
        public void run() {
            if (ChatInputTypingUserHelper.this.edit == null || !TextUtils.isEmpty(ChatInputTypingUserHelper.this.edit.getText().toString())) {
                return;
            }
            ChatInputTypingUserHelper.this.reportTypingEnd();
        }
    };
    private List<User> typingUser = new ArrayList();
    private List<User> recordingUser = new ArrayList();

    public ChatInputTypingUserHelper(NVContext nVContext, String str) {
        this.liveLayerService = (LiveLayerService) nVContext.getService("liveLayer");
        this.accountService = (AccountService) nVContext.getService("account");
        this.nvContext = nVContext;
        this.threadId = str;
    }

    public void linkLivelayer(TextView textView, EditText editText) {
        LiveLayerService liveLayerService;
        this.tvUserTyping = textView;
        this.edit = editText;
        String threadId = getThreadId();
        if (threadId == null || (liveLayerService = this.liveLayerService) == null) {
            return;
        }
        liveLayerService.subscribe("users-start-typing-at:" + threadId, this.liveLayerEventListener);
        this.liveLayerService.subscribe("users-end-typing-at:" + threadId, this.liveLayerEventListener);
        this.liveLayerService.subscribe("users-start-recording-at:" + threadId, this.liveLayerEventListener);
        this.liveLayerService.subscribe("users-end-recording-at:" + threadId, this.liveLayerEventListener);
    }

    public void dislinkLivelayer() {
        LiveLayerService liveLayerService;
        String threadId = getThreadId();
        if (threadId == null || (liveLayerService = this.liveLayerService) == null) {
            return;
        }
        liveLayerService.unsubscribe("users-start-typing-at:" + threadId, this.liveLayerEventListener);
        this.liveLayerService.unsubscribe("users-end-typing-at:" + threadId, this.liveLayerEventListener);
        this.liveLayerService.unsubscribe("users-start-recording-at:" + threadId, this.liveLayerEventListener);
        this.liveLayerService.unsubscribe("users-end-recording-at:" + threadId, this.liveLayerEventListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateTypingLayout() throws Resources.NotFoundException {
        String string;
        if (this.tvUserTyping == null) {
            return;
        }
        List<User> list = this.showTyping ? this.typingUser : this.recordingUser;
        if (list == null || list.size() == 0) {
            this.tvUserTyping.setVisibility(8);
            return;
        }
        this.tvUserTyping.setVisibility(0);
        if (list.size() >= 2) {
            string = this.tvUserTyping.getResources().getString(this.showTyping ? R.string.user_typing_2 : R.string.user_recording_2, "" + list.size());
        } else {
            string = this.tvUserTyping.getResources().getString(this.showTyping ? R.string.user_typing_1 : R.string.user_recording_1, list.get(0).nickname());
        }
        this.tvUserTyping.setText(string);
    }

    public ChatThread getThread() {
        ChatThread chatThread = this.thread;
        if (chatThread != null) {
            return chatThread;
        }
        NVContext nVContext = this.nvContext;
        if (nVContext instanceof ChatInputFragment) {
            this.thread = ((ChatInputFragment) nVContext).getThread();
        }
        return this.thread;
    }

    public void setThread(ChatThread chatThread) {
        this.thread = chatThread;
    }

    public String getThreadId() {
        if (!TextUtils.isEmpty(this.threadId)) {
            return this.threadId;
        }
        NVContext nVContext = this.nvContext;
        if (nVContext instanceof ChatInputFragment) {
            this.threadId = ((ChatInputFragment) nVContext).getThreadId();
        }
        return this.threadId;
    }

    public void checkInputTypingStatus(Editable editable) {
        if (TextUtils.isEmpty(editable.toString())) {
            Utils.handler.removeCallbacks(this.typingEndCheckRunnable);
            Utils.postDelayed(this.typingEndCheckRunnable, 3000L);
        } else {
            Utils.handler.removeCallbacks(this.typingEndCheckRunnable);
            reportTypingStart(editable.toString());
        }
        if (this.reportTarget != null) {
            Utils.handler.removeCallbacks(this.typingTimeOutRunnable);
            Utils.postDelayed(this.typingTimeOutRunnable, TYPING_TIMEOUT);
        }
    }

    public void reportRecordingStart() {
        ChatThread thread = getThread();
        if (thread == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(LiveLayerService.ACTION_RECORDING);
        String str = NVObject.objectTypeName(12) + "/" + thread.id();
        HashMap<String, Object> map = new HashMap<>();
        map.put("threadType", Integer.valueOf(thread.type));
        this.liveLayerService.reportActive(arrayList, str, map);
    }

    public void reportRecordingEnd() {
        ChatThread thread = getThread();
        if (thread == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(LiveLayerService.ACTION_RECORDING);
        HashMap<String, Object> map = new HashMap<>();
        map.put("threadType", Integer.valueOf(thread.type));
        this.liveLayerService.reportInactive(arrayList, NVObject.objectTypeName(12) + "/" + thread.id(), map);
    }

    public void reportTypingStart(String str) {
        ChatThread thread = getThread();
        if (thread != null && SystemClock.elapsedRealtime() - this.lastTypingReportTime > 3000) {
            this.reportTarget = NVObject.objectTypeName(12) + "/" + thread.id();
            HashMap<String, Object> map = new HashMap<>();
            map.put("threadType", Integer.valueOf(thread.type));
            ArrayList arrayList = new ArrayList();
            arrayList.add(LiveLayerService.ACTION_TYPING);
            this.liveLayerService.reportActive(arrayList, this.reportTarget, map);
            this.lastTypingReportTime = SystemClock.elapsedRealtime();
        }
    }

    public void reportTypingEnd() {
        ChatThread thread = getThread();
        if (thread == null || this.reportTarget == null) {
            return;
        }
        HashMap<String, Object> map = new HashMap<>();
        map.put("threadType", Integer.valueOf(thread.type));
        ArrayList arrayList = new ArrayList();
        arrayList.add(LiveLayerService.ACTION_TYPING);
        this.liveLayerService.reportInactive(arrayList, this.reportTarget, map);
        this.reportTarget = null;
    }
}
