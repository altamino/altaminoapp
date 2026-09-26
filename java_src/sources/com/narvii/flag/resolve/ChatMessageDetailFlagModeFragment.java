package com.narvii.flag.resolve;

import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import com.narvii.account.notice.AccountNotice;
import com.narvii.amino.master.R;
import com.narvii.chat.ChatMessageItemDetailFragment;
import com.narvii.flag.model.Flag;
import com.narvii.media.MediaGalleryActivity;
import com.narvii.model.ChatMessage;
import com.narvii.model.Media;
import com.narvii.model.NVObject;
import com.narvii.util.DateTimeFormatter;
import com.narvii.util.JacksonUtils;
import com.narvii.widget.NVImageView;
import com.safedk.android.utils.Logger;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class ChatMessageDetailFlagModeFragment extends ChatMessageItemDetailFragment implements FlagResolveBar.FlagAttachObject {
    private FlagResolveBar flagResolveBar;
    DateTimeFormatter fmt;
    private NVImageView imgAttachScreenShot;
    private Flag mFlag;
    private TextView tvMessageTime;

    @Override // com.narvii.flag.resolve.FlagResolveBar.FlagAttachObject
    public NVObject attachObject() {
        return this.chatMessage;
    }

    @Override // com.narvii.chat.ChatMessageItemDetailFragment
    protected int baseLayoutId() {
        return R.layout.flag_resolve_chat_layout;
    }

    @Override // com.narvii.app.NVFragment
    public Boolean hasPostEntry() {
        return Boolean.FALSE;
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityResult(int i10, int i11, Intent intent) {
        FlagModeHelper.handleActivityResult(this, this.flagResolveBar, i10, i11, intent, this.chatMessage, 7);
        super.onActivityResult(i10, i11, intent);
    }

    @Override // com.narvii.chat.ChatMessageItemDetailFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        String stringParam;
        String stringParam2;
        super.onCreate(bundle);
        Flag flag = (Flag) JacksonUtils.readAs(getStringParam("flag_item"), Flag.class);
        this.mFlag = flag;
        if (flag == null) {
            stringParam = getStringParam("threadId");
        } else {
            stringParam = flag.parentId;
        }
        this.threadId = stringParam;
        Flag flag2 = this.mFlag;
        if (flag2 == null) {
            stringParam2 = getStringParam(ChatMessageItemDetailFragment.KEY_MESSAGE_ID);
        } else {
            stringParam2 = flag2.objectId;
        }
        this.messageId = stringParam2;
        this.fmt = DateTimeFormatter.getInstance(getContext());
    }

    @Override // com.narvii.chat.ChatMessageItemDetailFragment, androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewOnCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        FlagResolveBar flagResolveBarAttachFlagMode = FlagModeHelper.attachFlagMode(viewOnCreateView, this);
        this.flagResolveBar = flagResolveBarAttachFlagMode;
        if (flagResolveBarAttachFlagMode != null) {
            flagResolveBarAttachFlagMode.setLeftText(getString(R.string.delete));
        }
        return viewOnCreateView;
    }

    @Override // com.narvii.chat.ChatMessageItemDetailFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString(AccountNotice.LEVEL_MESSAGE, JacksonUtils.writeAsString(this.chatMessage));
    }

    @Override // com.narvii.chat.ChatMessageItemDetailFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, @Nullable Bundle bundle) {
        final Media media;
        String str;
        int i10;
        super.onViewCreated(view, bundle);
        this.tvMessageTime = (TextView) view.findViewById(R.id.message_date);
        this.imgAttachScreenShot = (NVImageView) view.findViewById(R.id.attach_screenshot);
        List<Media> list = this.mFlag.screenshotMediaList;
        ColorDrawable colorDrawable = null;
        if (list != null && list.size() > 0) {
            media = this.mFlag.screenshotMediaList.get(0);
        } else {
            media = null;
        }
        if (media == null) {
            str = null;
        } else {
            str = media.url;
        }
        View viewFindViewById = view.findViewById(R.id.attach_container);
        if (!TextUtils.isEmpty(str)) {
            colorDrawable = new ColorDrawable(-788993);
        }
        viewFindViewById.setBackgroundDrawable(colorDrawable);
        NVImageView nVImageView = this.imgAttachScreenShot;
        if (TextUtils.isEmpty(str)) {
            i10 = 8;
        } else {
            i10 = 0;
        }
        nVImageView.setVisibility(i10);
        this.imgAttachScreenShot.setImageUrl(str);
        this.imgAttachScreenShot.setShowPressedMask(false);
        this.imgAttachScreenShot.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.flag.resolve.ChatMessageDetailFlagModeFragment.1
            public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
                Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
                if (p1 == null) {
                    return;
                }
                p0.startActivity(p1);
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(media);
                Intent intent = new Intent(ChatMessageDetailFlagModeFragment.this.getContext(), (Class<?>) MediaGalleryActivity.class);
                intent.putExtra("list", JacksonUtils.writeAsString(arrayList));
                safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(ChatMessageDetailFlagModeFragment.this, intent);
            }
        });
    }

    @Override // com.narvii.chat.ChatMessageItemDetailFragment
    protected void updateChatMessageView() {
        ChatMessage chatMessage;
        FlagResolveBar flagResolveBar;
        super.updateChatMessageView();
        ChatMessage chatMessage2 = this.chatMessage;
        if (chatMessage2 != null && chatMessage2._status == 10 && (flagResolveBar = this.flagResolveBar) != null) {
            flagResolveBar.showAlreadyResolved();
        }
        TextView textView = this.tvMessageTime;
        if (textView != null && (chatMessage = this.chatMessage) != null) {
            textView.setText(this.fmt.formatChat(chatMessage.createdTime));
        }
    }
}
