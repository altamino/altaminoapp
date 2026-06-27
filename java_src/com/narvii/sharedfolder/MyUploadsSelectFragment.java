package com.narvii.sharedfolder;

import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.internal.view.SupportMenu;
import android.view.View;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.list.MergeAdapter;
import com.narvii.list.StaticViewAdapter;
import com.narvii.list.overlay.OverlayListPlaceholder;
import com.narvii.media.MediaPickCallbackManager;
import com.narvii.media.MediaPickerFragment;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationListener;
import com.narvii.sharedfolder.MyUploadsBaseFragment;
import com.narvii.sharedfolder.SharedPhotosAdapter;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.dialog.ActionSheetDialog;
import com.narvii.widget.ACMAlertDialog;
import java.util.HashMap;

/* loaded from: classes3.dex */
public class MyUploadsSelectFragment extends MyUploadsBaseFragment implements NotificationListener {
    public static final String MODE_EDIT = "edit";
    public static final String MODE_PICK_UPLOAD = "pickUpload";
    public static final int REQUEST_SELECT_ALBUM = 1;
    public MergeAdapter mergeAdapter;
    TextView rightTextView;
    private String selectMode;

    @Override // com.narvii.sharedfolder.SharedBaseFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.selectMode = getStringParam("selectMode");
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        this.mergeAdapter = new MergeAdapter(this);
        StaticViewAdapter staticViewAdapter = new StaticViewAdapter();
        staticViewAdapter.addViews(new OverlayListPlaceholder(getContext()));
        this.mergeAdapter.addAdapter(staticViewAdapter);
        if (this.sharedFolderHelper.canUploadPhoto() && allowShowUpload()) {
            this.mergeAdapter.addAdapter(new MyUploadsBaseFragment.UploadAdapter(this));
        }
        this.mergeAdapter.addAdapter(getPhotoAdapter(true), true);
        this.sharedPhotosAdapter.setOnSelectedCountChangeListener(new SharedPhotosAdapter.OnSelectedCountChangeListener() { // from class: com.narvii.sharedfolder.MyUploadsSelectFragment.1
            @Override // com.narvii.sharedfolder.SharedPhotosAdapter.OnSelectedCountChangeListener
            public void onSelectedChanged(int i) {
                String str;
                TextView textView = MyUploadsSelectFragment.this.rightTextView;
                if (textView != null) {
                    StringBuilder sb = new StringBuilder();
                    MyUploadsSelectFragment myUploadsSelectFragment = MyUploadsSelectFragment.this;
                    sb.append(myUploadsSelectFragment.getString(myUploadsSelectFragment.getRightActionStringId()));
                    if (i > 0) {
                        str = "(" + i + ")";
                    } else {
                        str = "";
                    }
                    sb.append(str);
                    textView.setText(sb.toString());
                    MyUploadsSelectFragment.this.rightTextView.setEnabled(i > 0);
                }
            }
        });
        return this.mergeAdapter;
    }

    private boolean allowShowUpload() {
        return "pickUpload".equals(this.selectMode);
    }

    @Override // com.narvii.sharedfolder.SharedBaseFragment
    protected void addPhotos(final String str) {
        if ("pickUpload".equals(this.selectMode)) {
            this.sharedFolderHelper.checkUploadPhotoEligible(new Callback() { // from class: com.narvii.sharedfolder.MyUploadsSelectFragment.2
                @Override // com.narvii.util.Callback
                public void call(Object obj) {
                    MyUploadsSelectFragment.this.mediaPickerFragment.pickCallback = MediaPickCallbackManager.SHARED_PHOTO_PICK;
                    HashMap<String, Object> map = new HashMap<>();
                    map.put("showAddAlbumAlert", false);
                    map.put("Source", str);
                    MyUploadsSelectFragment myUploadsSelectFragment = MyUploadsSelectFragment.this;
                    MediaPickerFragment mediaPickerFragment = myUploadsSelectFragment.mediaPickerFragment;
                    mediaPickerFragment.pickCallbackParams = map;
                    mediaPickerFragment.pickMedia(myUploadsSelectFragment.dir, (Bundle) null, 0, 25);
                }
            });
        } else {
            super.addPhotos(str);
        }
    }

    @Override // com.narvii.sharedfolder.MyUploadsBaseFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i == 1 && i2 == -1) {
            finish();
        }
        super.onActivityResult(i, i2, intent);
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityCreated(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        super.onActivityCreated(bundle);
        FragmentActivity activity = getActivity();
        if (activity instanceof NVActivity) {
            String str = this.selectMode;
            char c = 65535;
            int iHashCode = str.hashCode();
            if (iHashCode != -1880416894) {
                if (iHashCode == 3108362 && str.equals("edit")) {
                    c = 0;
                }
            } else if (str.equals("pickUpload")) {
                c = 1;
            }
            if (c == 0) {
                ((NVActivity) activity).setActionBarRightView(getRightActionStringId(), new AnonymousClass3());
            } else if (c == 1) {
                ((NVActivity) activity).setActionBarRightView(getRightActionStringId(), new View.OnClickListener() { // from class: com.narvii.sharedfolder.MyUploadsSelectFragment.4
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        MyUploadsSelectFragment myUploadsSelectFragment = MyUploadsSelectFragment.this;
                        if (myUploadsSelectFragment.sharedPhotosAdapter == null) {
                            return;
                        }
                        myUploadsSelectFragment.sharedFolderHelper.addPhotosToAlbum(myUploadsSelectFragment.getStringParam("toAlbumId"), MyUploadsSelectFragment.this.sharedPhotosAdapter.getSelectedIds(), new Callback() { // from class: com.narvii.sharedfolder.MyUploadsSelectFragment.4.1
                            @Override // com.narvii.util.Callback
                            public void call(Object obj) {
                                MyUploadsSelectFragment.this.finish();
                            }
                        });
                    }
                });
            }
            NVActivity nVActivity = (NVActivity) activity;
            nVActivity.setActionBarLeftTextView(R.string.cancel);
            this.rightTextView = nVActivity.getRightTextView();
            nVActivity.setRightViewEnabled(false);
        }
    }

    /* renamed from: com.narvii.sharedfolder.MyUploadsSelectFragment$3, reason: invalid class name */
    class AnonymousClass3 implements View.OnClickListener {
        AnonymousClass3() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SharedPhotosAdapter sharedPhotosAdapter = MyUploadsSelectFragment.this.sharedPhotosAdapter;
            if (sharedPhotosAdapter == null) {
                return;
            }
            if (sharedPhotosAdapter.getSelectedIds().size() == 0) {
                MyUploadsSelectFragment.this.finish();
                return;
            }
            ActionSheetDialog actionSheetDialog = new ActionSheetDialog(MyUploadsSelectFragment.this.getContext());
            actionSheetDialog.addItem(R.string.add_to_album, false);
            actionSheetDialog.addItem(R.string.delete_selected_photos, true);
            actionSheetDialog.setOnClickListener(new AnonymousClass1());
            actionSheetDialog.show();
        }

        /* renamed from: com.narvii.sharedfolder.MyUploadsSelectFragment$3$1, reason: invalid class name */
        class AnonymousClass1 implements DialogInterface.OnClickListener {
            AnonymousClass1() {
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                if (i == 0) {
                    Intent intent = FragmentWrapperActivity.intent(SharedAlbumFragment.class);
                    intent.putExtra("selectMode", SharedAlbumFragment.MODE_SINGLE_PICK_UPLOAD_PHOTO);
                    intent.putExtra("fileIdList", JacksonUtils.writeAsString(MyUploadsSelectFragment.this.sharedPhotosAdapter.getSelectedIds()));
                    MyUploadsSelectFragment.this.startActivityForResult(intent, 1);
                    return;
                }
                if (i != 1) {
                    return;
                }
                ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(MyUploadsSelectFragment.this.getContext());
                aCMAlertDialog.setMessage(R.string.delete_photos_confirm_message);
                aCMAlertDialog.addButton(R.string.cancel, null);
                aCMAlertDialog.addButton(R.string.yes, new View.OnClickListener() { // from class: com.narvii.sharedfolder.MyUploadsSelectFragment.3.1.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        MyUploadsSelectFragment myUploadsSelectFragment = MyUploadsSelectFragment.this;
                        myUploadsSelectFragment.sharedFolderHelper.deletePhotos(myUploadsSelectFragment, myUploadsSelectFragment.sharedPhotosAdapter.getSelectedIds(), new Callback() { // from class: com.narvii.sharedfolder.MyUploadsSelectFragment.3.1.1.1
                            @Override // com.narvii.util.Callback
                            public void call(Object obj) {
                                if (MyUploadsSelectFragment.this.getActivity() == null) {
                                    return;
                                }
                                MyUploadsSelectFragment.this.getActivity().finish();
                            }
                        });
                    }
                }, SupportMenu.CATEGORY_MASK);
                aCMAlertDialog.show();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0026  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int getRightActionStringId() {
        /*
            r4 = this;
            java.lang.String r0 = r4.selectMode
            int r1 = r0.hashCode()
            r2 = -1880416894(0xffffffff8feb1d82, float:-2.3184155E-29)
            r3 = 1
            if (r1 == r2) goto L1c
            r2 = 3108362(0x2f6e0a, float:4.355743E-39)
            if (r1 == r2) goto L12
            goto L26
        L12:
            java.lang.String r1 = "edit"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L26
            r0 = 0
            goto L27
        L1c:
            java.lang.String r1 = "pickUpload"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L26
            r0 = 1
            goto L27
        L26:
            r0 = -1
        L27:
            r1 = 2131692580(0x7f0f0c24, float:1.9014264E38)
            if (r0 == 0) goto L33
            if (r0 == r3) goto L2f
            return r1
        L2f:
            r0 = 2131690410(0x7f0f03aa, float:1.9009863E38)
            return r0
        L33:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.sharedfolder.MyUploadsSelectFragment.getRightActionStringId():int");
    }

    @Override // com.narvii.notification.NotificationListener
    public void onNotification(Notification notification) {
        if ((notification.obj instanceof PhotoUpload) && this.sharedPhotosAdapter != null && "pickUpload".equals(this.selectMode)) {
            this.sharedPhotosAdapter.setSelectedIds(((PhotoUpload) notification.obj).fileIdList);
        }
    }
}
