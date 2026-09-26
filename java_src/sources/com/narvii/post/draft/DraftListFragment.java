package com.narvii.post.draft;

import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatButton;
import androidx.core.content.ContextCompat;
import com.google.android.gms.common.Scopes;
import com.narvii.amino.master.R;
import com.narvii.blog.post.BlogPost;
import com.narvii.blog.post.BlogPostActivity;
import com.narvii.blog.post.ImagePostActivity;
import com.narvii.blog.post.LinkPostActivity;
import com.narvii.blog.post.PollPostActivity;
import com.narvii.blog.post.QuizPostActivity;
import com.narvii.blog.post.TopicPostActivity;
import com.narvii.chat.post.ThreadPost;
import com.narvii.chat.post.ThreadPostNewActivity;
import com.narvii.comment.list.CommentListFragment;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.item.post.ItemPost;
import com.narvii.item.post.ItemPostActivity;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVListFragment;
import com.narvii.logging.ActSemantic;
import com.narvii.modulization.entry.EntryManager;
import com.narvii.post.DraftInfo;
import com.narvii.post.DraftManager;
import com.narvii.post.PostObject;
import com.narvii.user.profile.post.UserProfilePost;
import com.narvii.user.profile.post.UserProfilePostActivity;
import com.narvii.util.DateTimeFormatter;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.dialog.ActionSheetDialog;
import com.narvii.util.logging.LoggingSource;
import com.narvii.widget.NVImageView;
import com.narvii.widget.TintButton;
import com.safedk.android.utils.Logger;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class DraftListFragment extends NVListFragment {
    Adapter adapter;
    DraftManager draftManager;
    String draftType;
    private boolean isEdit = false;
    private TintButton leftBtn;
    private AppCompatButton rightBtn;

    class Adapter extends NVAdapter {
        List<Stub> list;

        private int getIconBackgroundColor(int i10) {
            if (i10 == 0) {
                return R.color.page_blog;
            }
            if (i10 == 4) {
                return R.color.page_poll;
            }
            if (i10 == 7) {
                return R.color.page_image_post;
            }
            if (i10 == 3) {
                return R.color.page_question;
            }
            if (i10 == 5) {
                return R.color.page_link_post;
            }
            return i10 == 6 ? R.color.page_quizzes : android.R.color.white;
        }

        public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.logging.Area
        public String getAreaName() {
            return "DraftList";
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getViewTypeCount() {
            return 4;
        }

        @Override // com.narvii.list.NVAdapter
        public boolean isListShown() {
            return true;
        }

        public Adapter() {
            super(DraftListFragment.this);
        }

        private Drawable getIconDrawable(int i10) {
            int i11;
            if (i10 == 0) {
                i11 = R.drawable.compose_button_blog;
            } else if (i10 == 4) {
                i11 = R.drawable.compose_button_poll;
            } else if (i10 == 7) {
                i11 = R.drawable.compose_button_image;
            } else if (i10 == 3) {
                i11 = R.drawable.compose_button_question;
            } else if (i10 == 5) {
                i11 = R.drawable.compose_button_link;
            } else {
                i11 = i10 == 6 ? R.drawable.compose_button_quiz : 0;
            }
            if (i11 == 0) {
                return null;
            }
            return ContextCompat.getDrawable(getContext(), i11);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            List<Stub> list = this.list;
            if (list == null) {
                return 0;
            }
            return list.size();
        }

        @Override // android.widget.Adapter
        public Stub getItem(int i10) {
            return this.list.get(i10);
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            Class cls;
            logClickEvent(ActSemantic.pageEnter);
            if (DraftListFragment.this.isEdit) {
                if (view2 == null || view2.getId() != R.id.delete) {
                    return false;
                }
                DraftListFragment.this.draftManager.deleteDraft(getItem(i10).info.id);
                rebuild();
                return false;
            }
            Stub item = getItem(i10);
            if ("blog".equals(item.info.type)) {
                cls = BlogPostActivity.class;
            } else if ("link".equals(item.info.type)) {
                cls = LinkPostActivity.class;
            } else if ("item".equals(item.info.type)) {
                cls = ItemPostActivity.class;
            } else if ("topic".equals(item.info.type)) {
                cls = TopicPostActivity.class;
            } else if ("quiz".equals(item.info.type)) {
                cls = QuizPostActivity.class;
            } else if (EntryManager.ENTRY_POLL.equals(item.info.type)) {
                cls = PollPostActivity.class;
            } else if ("image".equals(item.info.type)) {
                cls = ImagePostActivity.class;
            } else if ("thread".equals(item.info.type)) {
                cls = ThreadPostNewActivity.class;
            } else {
                cls = Scopes.PROFILE.equals(item.info.type) ? UserProfilePostActivity.class : null;
            }
            if (cls == null) {
                Log.e("unknown draft type " + item.info.type);
                return true;
            }
            Intent intent = new Intent(getContext(), (Class<?>) cls);
            intent.putExtra("draftId", item.info.id);
            intent.putExtra(ExternalPostPreviewFragment.SOURCE, "Drafts");
            intent.putExtra(CommentListFragment.COMMENT_KEY_LOGGING_SOURCE, LoggingSource.DraftBox.name());
            safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent);
            return true;
        }

        /* JADX WARN: Code duplicated, block: B:34:0x00f6  */
        public void rebuild() {
            PostObject post;
            ArrayList arrayList = new ArrayList();
            DraftListFragment draftListFragment = DraftListFragment.this;
            Iterator<DraftInfo> it = draftListFragment.draftManager.list(draftListFragment.draftType).iterator();
            while (it.hasNext()) {
                DraftInfo next = it.next();
                if ("blog".equals(next.type) || "link".equals(next.type)) {
                    post = DraftListFragment.this.draftManager.readPost(next.id, BlogPost.class);
                } else if ("item".equals(next.type)) {
                    post = DraftListFragment.this.draftManager.readPost(next.id, ItemPost.class);
                } else if ("topic".equals(next.type) || "quiz".equals(next.type) || EntryManager.ENTRY_POLL.equals(next.type) || "image".equals(next.type)) {
                    post = DraftListFragment.this.draftManager.readPost(next.id, BlogPost.class);
                } else if ("thread".equals(next.type)) {
                    if (JacksonUtils.nodeString(next.params, "userId") == null) {
                        post = DraftListFragment.this.draftManager.readPost(next.id, ThreadPost.class);
                    } else {
                        post = null;
                    }
                } else if (Scopes.PROFILE.equals(next.type)) {
                    post = DraftListFragment.this.draftManager.readPost(next.id, UserProfilePost.class);
                } else {
                    post = null;
                }
                if (post == null) {
                    DraftListFragment.this.draftManager.deleteDraft(next.id);
                    Log.e("unknown draft type " + next.type);
                } else {
                    Stub stub = DraftListFragment.this.new Stub();
                    stub.info = next;
                    stub.post = post;
                    arrayList.add(stub);
                }
            }
            this.list = arrayList;
            notifyDataSetChanged();
            invalidateOptionsMenu();
            if (!arrayList.isEmpty() || DraftListFragment.this.rightBtn == null) {
                return;
            }
            DraftListFragment.this.isEdit = false;
            DraftListFragment.this.updateEditView();
            DraftListFragment.this.rightBtn.setEnabled(false);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            return getItem(i10).info.id.hashCode();
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getItemViewType(int i10) {
            Stub item = getItem(i10);
            if ("item".equals(item.info.type)) {
                return 1;
            }
            if (Scopes.PROFILE.equals(item.info.type)) {
                return 2;
            }
            if ("thread".equals(item.info.type)) {
                return 3;
            }
            return 0;
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            int i11;
            int i12;
            Stub item = getItem(i10);
            PostObject postObject = item.post;
            int itemViewType = getItemViewType(i10);
            if (itemViewType != 1) {
                if (itemViewType != 2) {
                    if (itemViewType != 3) {
                        i11 = R.layout.draft_simple_item;
                    } else {
                        i11 = R.layout.draft_public_chat_item;
                    }
                } else {
                    i11 = R.layout.draft_user_item;
                }
            } else {
                i11 = R.layout.draft_favorite_item;
            }
            View viewCreateView = createView(i11, viewGroup, view);
            String strTitle = postObject.title();
            if (TextUtils.isEmpty(strTitle)) {
                strTitle = DraftListFragment.this.getString(R.string.draft_untitled);
                ((TextView) viewCreateView.findViewById(R.id.label)).setTextColor(DraftListFragment.this.getResources().getColor(R.color.draft_no_title_color));
            } else {
                ((TextView) viewCreateView.findViewById(R.id.label)).setTextColor(DraftListFragment.this.getResources().getColor(R.color.draft_label_color));
            }
            ((TextView) viewCreateView.findViewById(R.id.label)).setText(strTitle);
            ((TextView) viewCreateView.findViewById(R.id.content)).setText(postObject.content());
            TextView textView = (TextView) viewCreateView.findViewById(R.id.edit_time);
            DraftInfo draftInfo = item.info;
            if (draftInfo != null && textView != null && draftInfo.modifiedTime != 0) {
                textView.setText(new DateTimeFormatter().format(new Date(item.info.modifiedTime)));
            }
            View viewFindViewById = viewCreateView.findViewById(R.id.play_button);
            int i13 = 8;
            if (viewFindViewById != null) {
                if (postObject.hasVideo()) {
                    i12 = 0;
                } else {
                    i12 = 8;
                }
                viewFindViewById.setVisibility(i12);
            }
            NVImageView nVImageView = (NVImageView) viewCreateView.findViewById(R.id.image);
            if (!TextUtils.isEmpty(postObject.icon())) {
                if (getItemViewType(i10) == 1) {
                    viewCreateView.findViewById(R.id.image_empty).setVisibility(8);
                    viewCreateView.findViewById(R.id.card_view).setVisibility(0);
                }
                nVImageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
                nVImageView.setImageUrl(postObject.icon());
                nVImageView.imageType = "";
            } else {
                nVImageView.imageType = "";
                nVImageView.setScaleType(ImageView.ScaleType.CENTER);
                if (postObject instanceof BlogPost) {
                    int i14 = ((BlogPost) postObject).type;
                    nVImageView.setImageDrawable(getIconDrawable(i14));
                    nVImageView.setBackgroundColor(ContextCompat.getColor(getContext(), getIconBackgroundColor(i14)));
                } else if (getItemViewType(i10) == 3) {
                    nVImageView.setImageResource(R.drawable.compose_button_chat);
                    nVImageView.setBackgroundColor(ContextCompat.getColor(getContext(), R.color.chat_theme_color));
                } else if (getItemViewType(i10) == 1) {
                    viewCreateView.findViewById(R.id.card_view).setVisibility(8);
                    NVImageView nVImageView2 = (NVImageView) viewCreateView.findViewById(R.id.image_empty);
                    nVImageView2.setVisibility(0);
                    nVImageView2.setImageResource(R.drawable.compose_button_item);
                    nVImageView2.setBackgroundColor(ContextCompat.getColor(getContext(), R.color.page_wiki));
                } else {
                    nVImageView.setImageUrl(null);
                    nVImageView.setBackgroundColor(ContextCompat.getColor(getContext(), R.color.placeholder));
                }
            }
            View viewFindViewById2 = viewCreateView.findViewById(R.id.delete);
            if (viewFindViewById2 != null) {
                if (DraftListFragment.this.isEdit) {
                    i13 = 0;
                }
                viewFindViewById2.setVisibility(i13);
                viewFindViewById2.setOnClickListener(this.subviewClickListener);
            }
            viewCreateView.setOnClickListener(this.subviewClickListener);
            return viewCreateView;
        }
    }

    class Stub {
        DraftInfo info;
        PostObject post;

        Stub() {
        }
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    @Nullable
    public String getPageName() {
        return "drafts_list";
    }

    @Override // com.narvii.app.NVFragment
    public boolean isModel() {
        return true;
    }

    private void deleteAllDrafts() {
        ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
        actionSheetDialog.setTitle(R.string.post_draft_delete_all_message);
        actionSheetDialog.addItem(R.string.post_draft_delete_all, 1);
        actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.post.draft.DraftListFragment.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i10) {
                if (TextUtils.isEmpty(DraftListFragment.this.draftType)) {
                    DraftListFragment.this.draftManager.clearDrafts();
                } else {
                    ArrayList arrayList = new ArrayList();
                    List<Stub> list = DraftListFragment.this.adapter.list;
                    if (list != null) {
                        Iterator<Stub> it = list.iterator();
                        while (it.hasNext()) {
                            arrayList.add(it.next().info);
                        }
                    }
                    DraftListFragment.this.draftManager.deleteDrafts(arrayList);
                }
                DraftListFragment.this.adapter.rebuild();
                DraftListFragment.this.isEdit = false;
                DraftListFragment.this.updateEditView();
            }
        });
        actionSheetDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$customLeftView$0(View view) {
        boolean z6 = !this.isEdit;
        this.isEdit = z6;
        if (z6) {
            finish();
        } else {
            updateEditView();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$customRightView$1(View view) {
        if (this.isEdit) {
            deleteAllDrafts();
        } else {
            this.isEdit = true;
            updateEditView();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateEditView() {
        this.leftBtn.setImageDrawable(ContextCompat.getDrawable(getContext(), this.isEdit ? R.drawable.ic_actionbar_close : R.drawable.ic_back_mirror));
        this.rightBtn.setText(this.isEdit ? R.string.delete_all : R.string.edit);
        this.rightBtn.setBackgroundDrawable(ContextCompat.getDrawable(getContext(), this.isEdit ? R.drawable.draft_list_delete_bg : R.drawable.draft_list_edit_bg));
        this.adapter.notifyDataSetChanged();
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        this.adapter = new Adapter();
        getListView().setOnItemLongClickListener(this.adapter);
        return this.adapter;
    }

    private void customLeftView() {
        View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.actionbar_layout, (ViewGroup) null);
        ((TextView) viewInflate.findViewById(R.id.actionbar_title)).setText(R.string.post_saved_drafts);
        setActionBarLeftView(viewInflate);
        TintButton tintButton = (TintButton) viewInflate.findViewById(R.id.actionbar_back);
        this.leftBtn = tintButton;
        tintButton.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.post.draft.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f2595a.lambda$customLeftView$0(view);
            }
        });
    }

    private void customRightView() {
        View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.draft_list_action_bar_right, (ViewGroup) null);
        setActionBarRightView(viewInflate);
        AppCompatButton appCompatButton = (AppCompatButton) viewInflate.findViewById(R.id.delete_btn);
        this.rightBtn = appCompatButton;
        appCompatButton.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.post.draft.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f2594a.lambda$customRightView$1(view);
            }
        });
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        if (getActivity() == null) {
            return;
        }
        customLeftView();
        customRightView();
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            this.draftType = getStringParam("draftType");
        }
        setTitle(R.string.post_saved_drafts);
        this.draftManager = (DraftManager) getService(EntryManager.ENTRY_DRAFT);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        menu.add(0, R.string.post_draft_delete_all, 0, R.string.post_draft_delete_all);
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == R.string.post_draft_delete_all) {
            deleteAllDrafts();
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // androidx.fragment.app.Fragment
    public void onPrepareOptionsMenu(Menu menu) {
        boolean z6;
        super.onPrepareOptionsMenu(menu);
        MenuItem menuItemFindItem = menu.findItem(R.string.post_draft_delete_all);
        Adapter adapter = this.adapter;
        if (adapter != null && !adapter.isEmpty()) {
            z6 = true;
        } else {
            z6 = false;
        }
        menuItemFindItem.setVisible(z6);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        this.adapter.rebuild();
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        setEmptyView(R.layout.draft_empty_view);
    }
}
