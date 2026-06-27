package com.narvii.flag.resolve;

import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.narvii.account.notice.AccountNotice;
import com.narvii.amino.mastes.R;
import com.narvii.chat.ChatMessageItemDetailFragment;
import com.narvii.flag.model.Flag;
import com.narvii.flag.resolve.FlagResolveBar;
import com.narvii.media.MediaGalleryActivity;
import com.narvii.model.ChatMessage;
import com.narvii.model.Media;
import com.narvii.model.NVObject;
import com.narvii.util.DateTimeFormatter;
import com.narvii.util.JacksonUtils;
import com.narvii.widget.NVImageView;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class ChatMessageDetailFlagModeFragment extends ChatMessageItemDetailFragment implements View.OnClickListener, FlagResolveBar.FlagAttachObject {
    private FlagResolveBar flagResolveBar;
    DateTimeFormatter fmt;
    private NVImageView imgAttachScreenShot;
    private Flag mFlag;
    private TextView tvMessageTime;

    @Override // com.narvii.chat.ChatMessageItemDetailFragment
    protected int baseLayoutId() {
        return R.layout.flag_resolve_chat_layout;
    }

    @Override // com.narvii.chat.ChatMessageItemDetailFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mFlag = (Flag) JacksonUtils.readAs(getStringParam("flag_item"), Flag.class);
        Flag flag = this.mFlag;
        this.threadId = flag == null ? getStringParam("threadId") : flag.parentId;
        Flag flag2 = this.mFlag;
        this.messageId = flag2 == null ? getStringParam(ChatMessageItemDetailFragment.KEY_MESSAGE_ID) : flag2.objectId;
        this.fmt = DateTimeFormatter.getInstance(getContext());
    }

    @Override // com.narvii.chat.ChatMessageItemDetailFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.tvMessageTime = (TextView) view.findViewById(R.id.message_date);
        this.imgAttachScreenShot = (NVImageView) view.findViewById(R.id.attach_screenshot);
        List<Media> list = this.mFlag.screenshotMediaList;
        final Media media = (list == null || list.size() <= 0) ? null : this.mFlag.screenshotMediaList.get(0);
        String str = media == null ? null : media.url;
        view.findViewById(R.id.attach_container).setBackgroundDrawable(TextUtils.isEmpty(str) ? null : new ColorDrawable(-788993));
        this.imgAttachScreenShot.setVisibility(TextUtils.isEmpty(str) ? 8 : 0);
        this.imgAttachScreenShot.setImageUrl(str);
        this.imgAttachScreenShot.setShowPressedMask(false);
        this.imgAttachScreenShot.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.flag.resolve.ChatMessageDetailFlagModeFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(media);
                Intent intent = new Intent(ChatMessageDetailFlagModeFragment.this.getContext(), (Class<?>) MediaGalleryActivity.class);
                intent.putExtra("list", JacksonUtils.writeAsString(arrayList));
                ChatMessageDetailFlagModeFragment.this.startActivity(intent);
            }
        });
    }

    @Override // com.narvii.chat.ChatMessageItemDetailFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString(AccountNotice.LEVEL_MESSAGE, JacksonUtils.writeAsString(this.chatMessage));
    }

    @Override // com.narvii.chat.ChatMessageItemDetailFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewOnCreateView = super.onCreateView(layoutInflater, viewGroup, bundle);
        this.flagResolveBar = FlagModeHelper.attachFlagMode(viewOnCreateView, this);
        FlagResolveBar flagResolveBar = this.flagResolveBar;
        if (flagResolveBar != null) {
            flagResolveBar.setLeftText(getString(R.string.delete));
        }
        return viewOnCreateView;
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
        if (textView == null || (chatMessage = this.chatMessage) == null) {
            return;
        }
        textView.setText(this.fmt.formatChat(chatMessage.createdTime));
    }

    @Override // com.narvii.app.NVFragment
    public Boolean hasPostEntry() {
        return false;
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        FlagModeHelper.handleActivityResult(this, this.flagResolveBar, i, i2, intent, this.chatMessage, 7);
        super.onActivityResult(i, i2, intent);
    }

    @Override // com.narvii.flag.resolve.FlagResolveBar.FlagAttachObject
    public NVObject attachObject() {
        return this.chatMessage;
    }
}
