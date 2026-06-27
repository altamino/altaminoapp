package com.narvii.chat.detail;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.TranslateAnimation;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVFragment;
import com.narvii.chat.ChatBackgroundPickerRecycler;
import com.narvii.chat.util.ChatHelper;
import com.narvii.model.ChatThread;
import com.narvii.model.Media;
import com.narvii.model.api.ApiResponse;
import com.narvii.notification.Notification;
import com.narvii.photos.PhotoManager;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.NVToast;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.widget.NVImageView;
import java.io.File;
import java.util.List;
import java.util.UUID;

/* loaded from: classes2.dex */
public class BackgroundPickerFragment extends NVFragment implements ChatBackgroundPickerRecycler.OnSelectBackgroundListener {
    private ChatBackgroundPickerRecycler chatPicker;
    private ChatThread chatThread;
    private boolean isShown;
    private View pickerLayout;

    @Override // com.narvii.chat.ChatBackgroundPickerRecycler.OnSelectBackgroundListener
    public void onStartPick() {
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    public void setChatThread(ChatThread chatThread) {
        this.chatThread = chatThread;
        ChatBackgroundPickerRecycler chatBackgroundPickerRecycler = this.chatPicker;
        if (chatBackgroundPickerRecycler != null) {
            chatBackgroundPickerRecycler.setCurrentSelect(chatThread.getBackground(), true);
        }
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.chat_detail_background_picker, viewGroup, false);
        viewInflate.setOnTouchListener(new View.OnTouchListener() { // from class: com.narvii.chat.detail.BackgroundPickerFragment.1
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return true;
            }
        });
        return viewInflate;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.pickerLayout = view.findViewById(R.id.background_picker_layout);
        this.chatPicker = (ChatBackgroundPickerRecycler) view.findViewById(R.id.chat_background_picker);
        this.chatPicker.setOnSelectBackgroundListener(this);
        ChatThread chatThread = this.chatThread;
        if (chatThread != null) {
            this.chatPicker.setCurrentSelect(chatThread.getBackground());
        }
        view.findViewById(R.id.done).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.detail.BackgroundPickerFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) throws Throwable {
                BackgroundPickerFragment.this.onPostBackground();
            }
        });
        view.findViewById(R.id.cancel).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.chat.detail.BackgroundPickerFragment.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                BackgroundPickerFragment.this.dismiss();
            }
        });
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onHiddenChanged(boolean z) {
        ChatThread chatThread;
        ChatBackgroundPickerRecycler chatBackgroundPickerRecycler;
        if (z || (chatThread = this.chatThread) == null || (chatBackgroundPickerRecycler = this.chatPicker) == null) {
            return;
        }
        chatBackgroundPickerRecycler.setCurrentSelect(chatThread.getBackground());
    }

    @Override // com.narvii.chat.ChatBackgroundPickerRecycler.OnSelectBackgroundListener
    public void onSelectBackground(Media media) {
        ChatBackgroundPickerRecycler chatBackgroundPickerRecycler = this.chatPicker;
        if (chatBackgroundPickerRecycler != null) {
            chatBackgroundPickerRecycler.setCurrentSelect(media);
        }
    }

    protected void onPostBackground() throws Throwable {
        Media currentSelect = this.chatPicker.getCurrentSelect();
        if (currentSelect == null) {
            deleteBackground();
        } else if (((PhotoManager) getService("photo")).getUploadedUrl(currentSelect.url) == null) {
            setBackground(currentSelect);
        } else {
            setBackgroundUrl(currentSelect);
        }
    }

    public void deleteBackground() {
        if (this.chatThread == null) {
            return;
        }
        ProgressDialog progressDialog = new ProgressDialog(getContext());
        progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.chat.detail.BackgroundPickerFragment.4
            @Override // com.narvii.util.Callback
            public void call(ApiResponse apiResponse) throws Throwable {
                ChatThread chatThread = (ChatThread) BackgroundPickerFragment.this.chatThread.m46clone();
                chatThread.setBackground(null);
                BackgroundPickerFragment.this.sendNotification(new Notification("update", chatThread));
                BackgroundPickerFragment.this.finish();
            }
        };
        progressDialog.show();
        AccountService accountService = (AccountService) getService("account");
        ((ApiService) getService("api")).exec(ApiRequest.builder().chatServer().delete().path("/chat/thread/" + this.chatThread.threadId + "/member/" + accountService.getUserId() + "/background").build(), progressDialog.dismissListener);
    }

    public void setBackground(final Media media) throws Throwable {
        if (this.chatThread == null) {
            return;
        }
        PhotoManager photoManager = (PhotoManager) getService("photo");
        File fileCreateTmpFile = Utils.createTmpFile();
        File fileCreateTmpFile2 = Utils.createTmpFile();
        try {
            String[] strArr = new String[1];
            photoManager.writeUploadDataTo(media.url, NVImageView.TYPE_CHAT_BACKGROUND, fileCreateTmpFile, strArr);
            String string = UUID.randomUUID().toString();
            ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
            objectNodeCreateObjectNode.put("mediaType", 100);
            objectNodeCreateObjectNode.put("mediaUploadValue", string);
            objectNodeCreateObjectNode.put("mediaUploadValueContentType", strArr[0]);
            ChatHelper.Companion.buildBodyFile(objectNodeCreateObjectNode.toString(), fileCreateTmpFile, string, fileCreateTmpFile2);
        } catch (Exception e) {
            Log.e("unable to encode bitmap", e);
        } catch (OutOfMemoryError e2) {
            Log.e("out of memory when encode bitmap", e2);
            NVToast.makeText(getContext(), getString(R.string.out_of_memory), 0).show();
        }
        fileCreateTmpFile.delete();
        if (fileCreateTmpFile2.length() == 0) {
            return;
        }
        ProgressDialog progressDialog = new ProgressDialog(getContext());
        progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.chat.detail.BackgroundPickerFragment.5
            @Override // com.narvii.util.Callback
            public void call(ApiResponse apiResponse) {
            }
        };
        progressDialog.show();
        AccountService accountService = (AccountService) getService("account");
        ApiRequest.Builder builder = ApiRequest.builder();
        builder.chatServer().post();
        builder.path("/chat/thread/" + this.chatThread.threadId + "/member/" + accountService.getUserId() + "/background");
        builder.body(fileCreateTmpFile2).deleteBodyAfterDone();
        builder.timeout(30000);
        ((ApiService) getService("api")).exec(builder.build(), new ApiResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.chat.detail.BackgroundPickerFragment.6
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
                ChatThread chatThread = (ChatThread) BackgroundPickerFragment.this.chatThread.m46clone();
                chatThread.setBackground(media);
                BackgroundPickerFragment.this.sendNotification(new Notification("update", chatThread));
                BackgroundPickerFragment.this.finish();
            }
        });
    }

    private void setBackgroundUrl(final Media media) {
        if (this.chatThread == null) {
            return;
        }
        ProgressDialog progressDialog = new ProgressDialog(getContext());
        progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.chat.detail.BackgroundPickerFragment.7
            @Override // com.narvii.util.Callback
            public void call(ApiResponse apiResponse) throws Throwable {
                ChatThread chatThread = (ChatThread) BackgroundPickerFragment.this.chatThread.m46clone();
                chatThread.setBackground(media);
                BackgroundPickerFragment.this.sendNotification(new Notification("update", chatThread));
                BackgroundPickerFragment.this.finish();
            }
        };
        progressDialog.show();
        AccountService accountService = (AccountService) getService("account");
        ApiRequest.Builder builder = ApiRequest.builder();
        builder.chatServer().post();
        builder.path("/chat/thread/" + this.chatThread.threadId + "/member/" + accountService.getUserId() + "/background");
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        objectNodeCreateObjectNode.put("media", JacksonUtils.DEFAULT_MAPPER.valueToTree(media));
        builder.body(objectNodeCreateObjectNode).deleteBodyAfterDone();
        builder.timeout(30000);
        ((ApiService) getService("api")).exec(builder.build(), progressDialog.dismissListener);
    }

    private int getAnimationHeight() {
        if (this.pickerLayout.getHeight() == 0 && this.pickerLayout.getMeasuredHeight() == 0) {
            this.pickerLayout.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
        }
        int height = this.pickerLayout.getHeight();
        return height == 0 ? this.pickerLayout.getMeasuredHeight() : height;
    }

    public void show() {
        if (this.isShown) {
            return;
        }
        this.isShown = true;
        getFragmentManager().beginTransaction().show(this).commitAllowingStateLoss();
        TranslateAnimation translateAnimation = new TranslateAnimation(0.0f, 0.0f, getAnimationHeight(), 0.0f);
        translateAnimation.setDuration(200L);
        this.pickerLayout.startAnimation(translateAnimation);
    }

    public void dismiss() {
        if (this.isShown) {
            this.isShown = false;
            TranslateAnimation translateAnimation = new TranslateAnimation(0.0f, 0.0f, 0.0f, getAnimationHeight());
            translateAnimation.setDuration(200L);
            this.pickerLayout.startAnimation(translateAnimation);
            translateAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.narvii.chat.detail.BackgroundPickerFragment.8
                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationRepeat(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationStart(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationEnd(Animation animation) {
                    BackgroundPickerFragment.this.getFragmentManager().beginTransaction().hide(BackgroundPickerFragment.this).commitAllowingStateLoss();
                }
            });
        }
    }

    public boolean isShown() {
        return this.isShown;
    }
}
