package com.narvii.media;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.fragment.app.FragmentTransaction;
import com.narvii.app.FragmentWillFinishListener;
import com.narvii.app.NVActivity;
import com.narvii.lib.R;
import com.narvii.list.DragSortListFragment;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVArrayAdapter;
import com.narvii.model.Media;
import com.narvii.util.ActionBarIcon;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ActionSheetDialog;
import com.narvii.widget.ThumbImageView;
import com.safedk.android.utils.Logger;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;

/* JADX INFO: loaded from: classes7.dex */
public class MediaOrganizeFragment extends DragSortListFragment<Media> implements FragmentWillFinishListener, MediaPickerFragment.OnResultListener {
    private static Random rnd;
    Adapter adapter;
    Media coverMedia;
    File dir;
    ArrayList<String> existsRefIds;
    int flags;
    MediaPickerFragment picker;

    private class Adapter extends NVArrayAdapter<Media> {
        public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

        public Adapter(List<Media> list) {
            super(MediaOrganizeFragment.this, Media.class, list);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void removeItem(int i10, Media media) {
            if (MediaOrganizeFragment.this.isCoverMedia(media)) {
                MediaOrganizeFragment.this.coverMedia = null;
            }
            MediaOrganizeFragment.this.removeItemAtPosition(i10);
        }

        boolean exists(Media media) {
            String str;
            ArrayList<String> arrayList = MediaOrganizeFragment.this.existsRefIds;
            if (arrayList == null || (str = media.refId) == null) {
                return false;
            }
            return arrayList.contains(str);
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.media_organize_list_item, viewGroup, view);
            Media item = getItem(i10);
            ThumbImageView thumbImageView = (ThumbImageView) viewCreateView.findViewById(R.id.image);
            thumbImageView.setImageMedia(item);
            int i11 = R.id.edit;
            viewCreateView.findViewById(i11).setOnClickListener(this.subviewClickListener);
            thumbImageView.setOnClickListener(this.subviewClickListener);
            TextView textView = (TextView) viewCreateView.findViewById(R.id.text);
            textView.setHint(MediaOrganizeFragment.this.isPick() ? R.string.media_no_desc : R.string.media_add_desc);
            textView.setText(item.caption);
            boolean zExists = exists(item);
            viewCreateView.findViewById(i11).setVisibility(MediaOrganizeFragment.this.isPick() ? 8 : 0);
            viewCreateView.findViewById(R.id.drag_handle).setVisibility(MediaOrganizeFragment.this.isPick() ? 8 : 0);
            viewCreateView.findViewById(R.id.mask).setVisibility(zExists ? 0 : 8);
            viewCreateView.findViewById(R.id.cover_mark).setVisibility(MediaOrganizeFragment.this.isCoverMedia(item) ? 0 : 8);
            return viewCreateView;
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, final int i10, Object obj, View view, View view2) {
            if (obj instanceof Media) {
                if (view2 != null && view2.getId() == R.id.image) {
                    List<Media> list = getList();
                    int iIndexOf = list.indexOf(obj);
                    Intent intent = new Intent(getContext(), (Class<?>) MediaGalleryActivity.class);
                    intent.putExtra("list", JacksonUtils.writeAsString(list));
                    intent.putExtra("hideShareBar", true);
                    if (iIndexOf >= 0) {
                        intent.putExtra("position", iIndexOf);
                    }
                    safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent);
                    return true;
                }
                if (view2 == null || view2.getId() != R.id.edit) {
                    if (MediaOrganizeFragment.this.isPick()) {
                        Media media = (Media) obj;
                        if (!exists(media)) {
                            MediaOrganizeFragment.this.pickAndReturn(media);
                        }
                        return true;
                    }
                    final Media media2 = (Media) obj;
                    String str = media2.caption;
                    AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
                    builder.setTitle(R.string.media_caption);
                    final EditText editText = new EditText(getContext());
                    editText.setText(media2.caption);
                    String str2 = media2.caption;
                    editText.setSelection(str2 != null ? str2.length() : 0);
                    builder.setView(editText);
                    builder.setPositiveButton(android.R.string.ok, new DialogInterface.OnClickListener() { // from class: com.narvii.media.MediaOrganizeFragment.Adapter.2
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i11) {
                            media2.caption = editText.getText().toString().trim();
                            Adapter.this.notifyDataSetChanged();
                        }
                    });
                    builder.setNegativeButton(android.R.string.cancel, Utils.DIALOG_BUTTON_EMPTY_LISTENER);
                    AlertDialog alertDialogCreate = builder.create();
                    alertDialogCreate.getWindow().setSoftInputMode(4);
                    alertDialogCreate.show();
                    return true;
                }
                final Media media3 = (Media) obj;
                ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
                final boolean booleanParam = MediaOrganizeFragment.this.getBooleanParam("allowSetCover");
                if (booleanParam) {
                    if (MediaOrganizeFragment.this.isCoverMedia(media3)) {
                        actionSheetDialog.addItem(R.string.remove_as_cover_image, false);
                    } else {
                        actionSheetDialog.addItem(R.string.set_as_cover_image, false);
                    }
                }
                actionSheetDialog.addItem(R.string.delete, true);
                actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.media.MediaOrganizeFragment.Adapter.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i11) {
                        if (!booleanParam) {
                            if (i11 != 0) {
                                return;
                            }
                            Adapter.this.removeItem(i10, media3);
                        } else if (i11 != 0) {
                            if (i11 != 1) {
                                return;
                            }
                            Adapter.this.removeItem(i10, media3);
                        } else {
                            if (MediaOrganizeFragment.this.isCoverMedia(media3)) {
                                MediaOrganizeFragment.this.coverMedia = null;
                            } else {
                                MediaOrganizeFragment.this.coverMedia = media3;
                            }
                            Adapter.this.notifyDataSetChanged();
                        }
                    }
                });
                actionSheetDialog.show();
            }
            return super.onItemClick(listAdapter, i10, obj, view, view2);
        }

        @Override // com.narvii.list.NVArrayAdapter, com.narvii.list.NVAdapter
        public void onRestoreInstanceState(Bundle bundle) {
            super.onRestoreInstanceState(bundle);
            int i10 = bundle.getInt("coverMediaIndex", -1);
            List<Media> list = getList();
            if (list != null && i10 >= 0 && i10 < list.size()) {
                MediaOrganizeFragment.this.coverMedia = list.get(i10);
            }
        }

        @Override // com.narvii.list.NVArrayAdapter, com.narvii.list.NVAdapter
        public Bundle onSaveInstanceState() {
            Bundle bundleOnSaveInstanceState = super.onSaveInstanceState();
            if (bundleOnSaveInstanceState != null) {
                bundleOnSaveInstanceState.putInt("coverMediaIndex", MediaOrganizeFragment.this.getCurrentCoverMediaIndex());
            }
            return bundleOnSaveInstanceState;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isCoverMedia(Media media) {
        return media != null && media == this.coverMedia;
    }

    @Override // com.narvii.app.NVFragment
    public boolean isModel() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getCurrentCoverMediaIndex() {
        Adapter adapter;
        List<Media> list;
        if (this.coverMedia == null || (adapter = this.adapter) == null || (list = adapter.getList()) == null) {
            return -1;
        }
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (isCoverMedia(list.get(i10))) {
                return i10;
            }
        }
        return -1;
    }

    private String newRefId(List<Media> list) {
        if (rnd == null) {
            rnd = new Random(System.currentTimeMillis());
        }
        while (true) {
            String str = "";
            for (int i10 = 0; i10 < 3; i10++) {
                int iNextInt = rnd.nextInt(36);
                str = iNextInt < 10 ? str + ((char) (iNextInt + 48)) : str + ((char) (iNextInt + 55));
            }
            Iterator<Media> it = list.iterator();
            while (it.hasNext()) {
                if (str.equals(it.next().refId)) {
                }
            }
            return str;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.DragSortListFragment, com.narvii.list.NVListFragment
    public NVArrayAdapter<Media> createAdapter(Bundle bundle) {
        ArrayList listAs;
        int intParam = getIntParam("coverMediaIndex", -1);
        if (bundle == null) {
            listAs = JacksonUtils.readListAs(getStringParam("mediaList"), Media.class);
            if (intParam >= 0 && intParam < listAs.size()) {
                this.coverMedia = (Media) listAs.get(intParam);
            }
        } else {
            listAs = null;
        }
        this.adapter = new Adapter(listAs);
        if (isPick()) {
            this.existsRefIds = JacksonUtils.readListAs(getStringParam("existsRefIds"), String.class);
        }
        return this.adapter;
    }

    @Override // com.narvii.media.MediaPickerFragment.OnResultListener
    public void onPickMediaResult(List<Media> list, Bundle bundle) {
        ArrayList arrayList = new ArrayList(this.adapter.getList());
        arrayList.addAll(list);
        this.adapter.clear();
        this.adapter.addAll(arrayList);
        if (!isPick() || list.size() <= 0) {
            return;
        }
        pickAndReturn(list.get(0));
    }

    void pickAllAndReturn() {
        StringBuilder sb = new StringBuilder();
        ArrayList<Media> arrayList = new ArrayList(this.adapter.getList());
        for (Media media : arrayList) {
            if (TextUtils.isEmpty(media.refId)) {
                media.refId = newRefId(arrayList);
            }
            if (!this.existsRefIds.contains(media.refId)) {
                if (sb.length() > 0) {
                    sb.append(kotlinx.serialization.json.internal.b.COMMA);
                }
                sb.append(media.refId);
            }
        }
        Intent intent = new Intent();
        intent.putExtra("mediaList", JacksonUtils.writeAsString(arrayList));
        intent.putExtra("refIdList", sb.toString());
        setResult(-1, intent);
        finish();
    }

    void pickAndReturn(Media media) {
        ArrayList arrayList = new ArrayList(this.adapter.getList());
        if (arrayList.contains(media)) {
            if (TextUtils.isEmpty(media.refId)) {
                media.refId = newRefId(arrayList);
            }
            Intent intent = new Intent();
            intent.putExtra("mediaList", JacksonUtils.writeAsString(arrayList));
            intent.putExtra("refIdList", media.refId);
            setResult(-1, intent);
            finish();
        }
    }

    public boolean isPick() {
        return "android.intent.action.PICK".equals(getActivity().getIntent().getAction());
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        int i10;
        super.onCreate(bundle);
        setHasOptionsMenu(true);
        this.flags = getIntParam("flags");
        if (bundle == null) {
            FragmentTransaction fragmentTransactionQ = getFragmentManager().q();
            MediaPickerFragment mediaPickerFragment = new MediaPickerFragment();
            this.picker = mediaPickerFragment;
            fragmentTransactionQ.e(mediaPickerFragment, "picker").j();
        } else {
            this.picker = (MediaPickerFragment) getFragmentManager().m0("picker");
        }
        this.picker.addOnResultListener(this);
        this.dir = new File(getStringParam("dir"));
        if (isPick()) {
            i10 = R.string.post_insert_image;
        } else {
            i10 = R.string.post_images;
        }
        setTitle(i10);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        if (!isPick()) {
            menu.add(0, android.R.string.ok, 0, android.R.string.ok).setIcon(new ActionBarIcon(getContext(), R.string.fa_check)).setShowAsAction(2);
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        MediaPickerFragment mediaPickerFragment = this.picker;
        if (mediaPickerFragment != null) {
            mediaPickerFragment.removeOnResultListener(this);
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        if (isPick()) {
            View viewInflate = getLayoutInflater(null).inflate(R.layout.media_insert_all_item, (ViewGroup) getListView(), false);
            viewInflate.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.media.MediaOrganizeFragment.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    MediaOrganizeFragment.this.pickAllAndReturn();
                }
            });
            listView.addHeaderView(viewInflate, null, true);
        }
        View viewInflate2 = getLayoutInflater(null).inflate(R.layout.media_add_more_list_item, (ViewGroup) getListView(), false);
        viewInflate2.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.media.MediaOrganizeFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                int intParam = MediaOrganizeFragment.this.getIntParam("maximum", 50);
                if (intParam > 0 && MediaOrganizeFragment.this.adapter.getList().size() >= intParam) {
                    NVToast.makeText(MediaOrganizeFragment.this.getContext(), MediaOrganizeFragment.this.getString(R.string.media_exceed_limit, Integer.valueOf(intParam)), 0).show();
                } else if (MediaOrganizeFragment.this.isPick()) {
                    MediaOrganizeFragment mediaOrganizeFragment = MediaOrganizeFragment.this;
                    mediaOrganizeFragment.picker.pickMedia(mediaOrganizeFragment.dir, (Bundle) null, mediaOrganizeFragment.flags | 4, 0);
                } else {
                    MediaOrganizeFragment mediaOrganizeFragment2 = MediaOrganizeFragment.this;
                    mediaOrganizeFragment2.picker.pickMedia(mediaOrganizeFragment2.dir, (Bundle) null, mediaOrganizeFragment2.flags, intParam - mediaOrganizeFragment2.adapter.getList().size());
                }
            }
        });
        listView.addFooterView(viewInflate2, null, true);
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 17039370) {
            finish();
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        if (isPick() && this.adapter.isEmpty()) {
            this.picker.pickMedia(this.dir, (Bundle) null, this.flags | 4, getIntParam("maximum"));
        }
    }

    @Override // com.narvii.app.FragmentWillFinishListener
    public void willFinish(NVActivity nVActivity) {
        if (!isPick()) {
            Intent intent = new Intent();
            intent.putExtra("mediaList", JacksonUtils.writeAsString(this.adapter.getList()));
            intent.putExtra("coverMediaIndex", getCurrentCoverMediaIndex());
            nVActivity.setResult(-1, intent);
        }
    }
}
