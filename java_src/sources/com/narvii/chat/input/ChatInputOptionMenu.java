package com.narvii.chat.input;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.graphics.Color;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.compose.runtime.ComposerKt;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.chat.ChannelFlagHelper;
import com.narvii.chat.call.CallScreenService;
import com.narvii.chat.rtc.ChannelUserWrapper;
import com.narvii.chat.rtc.RtcService;
import com.narvii.chat.screenroom.ScreenRoomService;
import com.narvii.chat.signalling.ChannelUser;
import com.narvii.chat.signalling.SignallingChannel;
import com.narvii.chat.util.ChatHelper;
import com.narvii.chat.util.ChatHelperKt;
import com.narvii.chat.video.view.CheckableImageView;
import com.narvii.logging.LogEvent;
import com.narvii.model.ChatThread;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ActionSheetDialog;
import com.narvii.util.dialog.AlertDialog;
import com.narvii.video.ui.UserStatusData;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class ChatInputOptionMenu extends LinearLayout implements View.OnClickListener {
    public static final List<MenuItem> MENU_ALL;
    private AccountService accountService;
    private CallScreenService callScreenService;
    private GridLayout gridView;
    private NVContext nvcontext;
    private OnOptionMenuClickListener optionMenuClickListener;
    private RtcService rtcService;
    private ScreenRoomService screenRoomService;
    private ChatThread thread;
    private String threadId;
    private View toggleView;

    public interface OnOptionMenuClickListener {
        void doSettings();

        void toggleMute(boolean z6);

        void toggleSpeaker();
    }

    public void bindToggleView(View view) {
        this.toggleView = view;
    }

    public ChatThread getThread() {
        return this.thread;
    }

    public void setOnOptionMenuClickListener(OnOptionMenuClickListener onOptionMenuClickListener) {
        this.optionMenuClickListener = onOptionMenuClickListener;
    }

    public void setThread(ChatThread chatThread) {
        this.thread = chatThread;
    }

    public void setThreadId(String str) {
        this.threadId = str;
    }

    public void show() {
        UserStatusData userStatusData;
        if (this.threadId == null) {
            Log.e("chat input right view thread is null");
        }
        List<MenuItem> menuTypeList = getMenuTypeList();
        RtcService rtcService = this.rtcService;
        ChannelUserWrapper mainChannelLocalUserWrapper = rtcService == null ? null : rtcService.getMainChannelLocalUserWrapper();
        boolean z6 = (mainChannelLocalUserWrapper == null || (userStatusData = mainChannelLocalUserWrapper.userStatus) == null || !userStatusData.isSpeakerMode()) ? false : true;
        HashMap map = new HashMap();
        CallScreenService callScreenService = this.callScreenService;
        if (callScreenService == null || callScreenService.getCurStatus() != 1) {
            map.put(MenuItem.SPEAKER, Boolean.valueOf(!z6));
        } else {
            map.put(MenuItem.SPEAKER, Boolean.valueOf(true ^ this.callScreenService.isSpeakerOn()));
        }
        show(menuTypeList, map);
    }

    /* JADX INFO: renamed from: com.narvii.chat.input.ChatInputOptionMenu$2, reason: invalid class name */
    static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$com$narvii$chat$input$ChatInputOptionMenu$MenuItem;

        static {
            int[] iArr = new int[MenuItem.values().length];
            $SwitchMap$com$narvii$chat$input$ChatInputOptionMenu$MenuItem = iArr;
            try {
                iArr[MenuItem.PERMISSION.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$narvii$chat$input$ChatInputOptionMenu$MenuItem[MenuItem.SPEAKER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$narvii$chat$input$ChatInputOptionMenu$MenuItem[MenuItem.REPORT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public enum MenuItem {
        PERMISSION(R.drawable.ic_chat_permission, R.string.permission),
        SPEAKER(R.drawable.selector_speaker_mode, R.string.speaker),
        REPORT(R.drawable.ic_sr_flag, R.string.report);

        private final int icon;
        private final int string;

        MenuItem(int i10, int i11) {
            this.icon = i10;
            this.string = i11;
        }
    }

    static {
        ArrayList arrayList = new ArrayList();
        MENU_ALL = arrayList;
        arrayList.add(MenuItem.SPEAKER);
        arrayList.add(MenuItem.PERMISSION);
        arrayList.add(MenuItem.REPORT);
    }

    private void report() {
        char c7;
        final ChannelUserWrapper screenRoomHostUser = this.rtcService.getScreenRoomHostUser();
        final SignallingChannel mainSigChannel = this.rtcService.getMainSigChannel();
        ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
        final int[] iArr = new int[3];
        if (mainSigChannel == null || mainSigChannel.channelType != 5) {
            c7 = 0;
        } else {
            actionSheetDialog.addItem(R.string.flag_video, 0);
            iArr[0] = R.string.flag_video;
            c7 = 1;
        }
        actionSheetDialog.addItem(R.string.flag_a_participant, 0);
        iArr[c7] = R.string.flag_a_participant;
        actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.chat.input.ChatInputOptionMenu.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i10) {
                int i11 = iArr[i10];
                boolean z6 = false;
                if (i11 == R.string.flag_a_participant) {
                    AlertDialog alertDialog = new AlertDialog(ChatInputOptionMenu.this.getContext());
                    alertDialog.setTitle(ChatInputOptionMenu.this.getContext().getString(R.string.flag_notify_title));
                    alertDialog.setMessage(ChatInputOptionMenu.this.getContext().getString(R.string.flg_participant_info));
                    alertDialog.setTitleColor(Color.rgb(0, ComposerKt.referenceKey, 125));
                    alertDialog.addButton(android.R.string.ok, 4, (View.OnClickListener) null);
                    alertDialog.show();
                    return;
                }
                if (i11 != R.string.flag_video || mainSigChannel == null || screenRoomHostUser == null) {
                    return;
                }
                Log.d("VideoProcess", "user uid " + screenRoomHostUser.channelUid);
                ChannelUser channelUser = screenRoomHostUser.channelUser;
                if (channelUser != null && channelUser.isHost) {
                    z6 = true;
                }
                ChannelFlagHelper channelFlagHelper = new ChannelFlagHelper(ChatInputOptionMenu.this.nvcontext);
                SignallingChannel signallingChannel = mainSigChannel;
                int i12 = signallingChannel.ndcId;
                ChannelUserWrapper channelUserWrapper = screenRoomHostUser;
                ChannelUser channelUser2 = channelUserWrapper.channelUser;
                channelFlagHelper.flagUserInChannel(i12, channelUser2 != null ? channelUser2.userProfile : null, signallingChannel.channelType, signallingChannel.threadId, channelUserWrapper.channelUid, true, !z6);
                channelFlagHelper.setHintLanguage(ChatInputOptionMenu.this.getResources().getString(R.string.flag_message_hint_required));
            }
        });
        actionSheetDialog.show();
    }

    public List<MenuItem> getMenuTypeList() {
        ChatHelper chatHelper = new ChatHelper(getContext());
        ChatThread thread = getThread();
        RtcService rtcService = this.rtcService;
        SignallingChannel mappedSignallingChannel = rtcService == null ? null : rtcService.getMappedSignallingChannel(this.threadId);
        ArrayList arrayList = new ArrayList();
        if (mappedSignallingChannel != null && mappedSignallingChannel.channelType == 1) {
            arrayList.add(MenuItem.SPEAKER);
        }
        if (ChatHelperKt.isPublicChat(thread) && (chatHelper.isHost(thread) || chatHelper.isCoHost(thread))) {
            arrayList.add(MenuItem.PERMISSION);
        }
        if (!chatHelper.isHost(thread) || ChatHelperKt.isSingleChat(thread)) {
            arrayList.add(MenuItem.REPORT);
        }
        return arrayList;
    }

    public void hide() {
        setVisibility(8);
    }

    public ChatInputOptionMenu(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public boolean isVisible() {
        if (getVisibility() == 0) {
            return true;
        }
        return false;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Object tag = view.getTag();
        if (!(tag instanceof MenuItem)) {
            return;
        }
        int i10 = AnonymousClass2.$SwitchMap$com$narvii$chat$input$ChatInputOptionMenu$MenuItem[((MenuItem) tag).ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 == 3) {
                    LogEvent.clickWildcardBuilder(this, "Report").send();
                    report();
                }
            } else {
                LogEvent.clickWildcardBuilder(this, "Speaker").send();
                OnOptionMenuClickListener onOptionMenuClickListener = this.optionMenuClickListener;
                if (onOptionMenuClickListener != null) {
                    onOptionMenuClickListener.toggleSpeaker();
                }
            }
        } else {
            LogEvent.clickWildcardBuilder(this, "Permission").send();
            OnOptionMenuClickListener onOptionMenuClickListener2 = this.optionMenuClickListener;
            if (onOptionMenuClickListener2 != null) {
                onOptionMenuClickListener2.doSettings();
            }
        }
        hide();
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.gridView = (GridLayout) findViewById(R.id.chat_input_option_menu_container);
        NVContext nVContext = Utils.getNVContext(getContext());
        this.nvcontext = nVContext;
        if (nVContext != null) {
            this.callScreenService = (CallScreenService) nVContext.getService("callScreen");
            this.rtcService = (RtcService) this.nvcontext.getService("rtc");
            this.screenRoomService = (ScreenRoomService) this.nvcontext.getService("screenRoom");
            this.accountService = (AccountService) this.nvcontext.getService("account");
        }
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z6, int i10, int i11, int i12, int i13) {
        super.onLayout(z6, i10, i11, i12, i13);
        int[] iArr = new int[2];
        this.toggleView.getLocationInWindow(iArr);
        int[] iArr2 = new int[2];
        getLocationInWindow(iArr2);
        int width = (iArr[0] - iArr2[0]) + (this.toggleView.getWidth() / 2);
        int measuredWidth = width - (this.gridView.getMeasuredWidth() / 2);
        if (measuredWidth < getPaddingLeft()) {
            measuredWidth = getPaddingLeft();
        } else if (this.gridView.getMeasuredWidth() + measuredWidth > getMeasuredWidth() - getPaddingRight()) {
            measuredWidth = (getMeasuredWidth() - getPaddingRight()) - this.gridView.getMeasuredWidth();
        }
        GridLayout gridLayout = this.gridView;
        gridLayout.layout(measuredWidth, gridLayout.getTop(), this.gridView.getMeasuredWidth() + measuredWidth, this.gridView.getBottom());
        View viewFindViewById = findViewById(R.id.arrow);
        int measuredWidth2 = width - (viewFindViewById.getMeasuredWidth() / 2);
        viewFindViewById.layout(measuredWidth2, viewFindViewById.getTop(), viewFindViewById.getMeasuredWidth() + measuredWidth2, viewFindViewById.getBottom());
    }

    public void show(List<MenuItem> list, Map<MenuItem, Boolean> map) {
        setVisibility(0);
        DisplayMetrics displayMetrics = getContext().getResources().getDisplayMetrics();
        int iMin = (int) ((Math.min(displayMetrics.widthPixels, displayMetrics.heightPixels) - Utils.dpToPx(getContext(), 30.0f)) / 4.0f);
        int childCount = this.gridView.getChildCount();
        int size = list.size();
        if (size < childCount) {
            while (size < childCount) {
                try {
                    if (this.gridView.getChildAt(size) != null) {
                        this.gridView.removeViewAt(size);
                    }
                } catch (Exception unused) {
                }
                size++;
            }
        }
        this.gridView.setColumnCount(4);
        this.gridView.setRowCount((list.size() / 4) + 1);
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(getContext());
        int i10 = 0;
        while (i10 < list.size()) {
            View childAt = this.gridView.getChildCount() > i10 ? this.gridView.getChildAt(i10) : null;
            if (childAt == null) {
                childAt = layoutInflaterFrom.inflate(R.layout.chat_input_option_menu_item, (ViewGroup) this.gridView, false);
                this.gridView.addView(childAt);
            }
            MenuItem menuItem = list.get(i10);
            ((ImageView) childAt.findViewById(R.id.icon)).setImageResource(menuItem.icon);
            ((TextView) childAt.findViewById(R.id.title)).setText(menuItem.string);
            boolean zContainsKey = map.containsKey(menuItem);
            int i11 = R.color.selector_rtc_unchecked;
            if (zContainsKey) {
                boolean zBooleanValue = map.get(menuItem).booleanValue();
                ((CheckableImageView) childAt.findViewById(R.id.icon)).setChecked(zBooleanValue);
                TextView textView = (TextView) childAt.findViewById(R.id.title);
                Resources resources = getResources();
                if (zBooleanValue) {
                    i11 = R.color.selector_rtc_checked;
                }
                textView.setTextColor(resources.getColorStateList(i11));
            } else {
                ((TextView) childAt.findViewById(R.id.title)).setTextColor(getResources().getColorStateList(R.color.selector_rtc_unchecked));
            }
            childAt.setTag(menuItem);
            childAt.setOnClickListener(this);
            ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
            layoutParams.width = iMin;
            layoutParams.height = iMin;
            i10++;
        }
    }
}
