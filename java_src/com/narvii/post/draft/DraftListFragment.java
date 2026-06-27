package com.narvii.post.draft;

import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import android.support.v7.widget.AppCompatButton;
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
import com.google.android.gms.common.Scopes;
import com.narvii.amino.mastes.R;
import com.narvii.blog.post.BlogPost;
import com.narvii.blog.post.BlogPostActivity;
import com.narvii.blog.post.ImagePostActivity;
import com.narvii.blog.post.LinkPostActivity;
import com.narvii.blog.post.PollPostActivity;
import com.narvii.blog.post.QuizPostActivity;
import com.narvii.blog.post.StoryPostActivity;
import com.narvii.blog.post.TopicPostActivity;
import com.narvii.chat.post.ThreadPost;
import com.narvii.chat.post.ThreadPostNewActivity;
import com.narvii.comment.list.CommentListFragment;
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
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public class DraftListFragment extends NVListFragment {
    Adapter adapter;
    DraftManager draftManager;
    String draftType;
    private boolean isEdit = false;
    private TintButton leftBtn;
    private AppCompatButton rightBtn;

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "Drafts";
    }

    @Override // com.narvii.app.NVFragment
    public boolean isModel() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            this.draftType = getStringParam("draftType");
        }
        setTitle(R.string.post_saved_drafts);
        this.draftManager = (DraftManager) getService(EntryManager.ENTRY_DRAFT);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        super.onViewCreated(view, bundle);
        setEmptyView(R.layout.draft_empty_view);
    }

    @Override // android.support.v4.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        menu.add(0, R.string.post_draft_delete_all, 0, R.string.post_draft_delete_all);
    }

    @Override // android.support.v4.app.Fragment
    public void onPrepareOptionsMenu(Menu menu) {
        super.onPrepareOptionsMenu(menu);
        MenuItem menuItemFindItem = menu.findItem(R.string.post_draft_delete_all);
        Adapter adapter = this.adapter;
        menuItemFindItem.setVisible((adapter == null || adapter.isEmpty()) ? false : true);
    }

    @Override // android.support.v4.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == R.string.post_draft_delete_all) {
            deleteAllDrafts();
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onResume() {
        super.onResume();
        this.adapter.rebuild();
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        this.adapter = new Adapter();
        getListView().setOnItemLongClickListener(this.adapter);
        return this.adapter;
    }

    class Stub {
        DraftInfo info;
        PostObject post;

        Stub() {
        }
    }

    class Adapter extends NVAdapter {
        List<Stub> list;

        private int getIconBackgroundColor(int i) {
            return i == 0 ? R.color.page_blog : i == 9 ? R.color.page_story : i == 4 ? R.color.page_poll : i == 7 ? R.color.page_image_post : i == 3 ? R.color.page_question : i == 5 ? R.color.page_link_post : i == 6 ? R.color.page_quizzes : android.R.color.white;
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

        public void rebuild() {
            ArrayList arrayList = new ArrayList();
            DraftListFragment draftListFragment = DraftListFragment.this;
            Iterator<DraftInfo> it = draftListFragment.draftManager.list(draftListFragment.draftType).iterator();
            while (it.hasNext()) {
                DraftInfo next = it.next();
                PostObject post = null;
                if ("blog".equals(next.type) || "link".equals(next.type)) {
                    post = DraftListFragment.this.draftManager.readPost(next.id, BlogPost.class);
                } else if ("item".equals(next.type)) {
                    post = DraftListFragment.this.draftManager.readPost(next.id, ItemPost.class);
                } else if ("topic".equals(next.type) || EntryManager.ENTRY_QUIZZES.equals(next.type) || EntryManager.ENTRY_POLL.equals(next.type) || "image".equals(next.type) || "story".equals(next.type)) {
                    post = DraftListFragment.this.draftManager.readPost(next.id, BlogPost.class);
                } else if ("thread".equals(next.type)) {
                    if (JacksonUtils.nodeString(next.params, "userId") == null) {
                        post = DraftListFragment.this.draftManager.readPost(next.id, ThreadPost.class);
                    }
                } else if (Scopes.PROFILE.equals(next.type)) {
                    post = DraftListFragment.this.draftManager.readPost(next.id, UserProfilePost.class);
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
        public int getCount() {
            List<Stub> list = this.list;
            if (list == null) {
                return 0;
            }
            return list.size();
        }

        @Override // android.widget.Adapter
        public Stub getItem(int i) {
            return this.list.get(i);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return getItem(i).info.id.hashCode();
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getItemViewType(int i) {
            Stub item = getItem(i);
            if ("item".equals(item.info.type)) {
                return 1;
            }
            if (Scopes.PROFILE.equals(item.info.type)) {
                return 2;
            }
            return "thread".equals(item.info.type) ? 3 : 0;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            Stub item = getItem(i);
            PostObject postObject = item.post;
            int itemViewType = getItemViewType(i);
            View viewCreateView = createView(itemViewType != 1 ? itemViewType != 2 ? itemViewType != 3 ? R.layout.draft_simple_item : R.layout.draft_public_chat_item : R.layout.draft_user_item : R.layout.draft_favorite_item, viewGroup, view);
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
            if (draftInfo != null && textView != null) {
                long j = draftInfo.modifiedTime;
                if (j != 0) {
                    textView.setText(new DateTimeFormatter().format(new Date(j)));
                }
            }
            View viewFindViewById = viewCreateView.findViewById(R.id.play_button);
            if (viewFindViewById != null) {
                viewFindViewById.setVisibility(postObject.hasVideo() ? 0 : 8);
            }
            NVImageView nVImageView = (NVImageView) viewCreateView.findViewById(R.id.image);
            if (!TextUtils.isEmpty(postObject.icon())) {
                if (getItemViewType(i) == 1) {
                    viewCreateView.findViewById(R.id.image_empty).setVisibility(8);
                    viewCreateView.findViewById(R.id.card_view).setVisibility(0);
                }
                nVImageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
                nVImageView.setImageUrl(postObject.icon());
                if ((postObject instanceof BlogPost) && ((BlogPost) postObject).type == 9) {
                    nVImageView.imageType = NVImageView.TYPE_STORY_COVER;
                } else {
                    nVImageView.imageType = "";
                }
            } else {
                nVImageView.imageType = "";
                nVImageView.setScaleType(ImageView.ScaleType.CENTER);
                if (postObject instanceof BlogPost) {
                    int i2 = ((BlogPost) postObject).type;
                    nVImageView.setImageDrawable(getIconDrawable(i2));
                    nVImageView.setBackgroundColor(ContextCompat.getColor(getContext(), getIconBackgroundColor(i2)));
                } else if (getItemViewType(i) == 3) {
                    nVImageView.setImageResource(R.drawable.compose_button_chat);
                    nVImageView.setBackgroundColor(ContextCompat.getColor(getContext(), R.color.chat_theme_color));
                } else if (getItemViewType(i) == 1) {
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
                viewFindViewById2.setVisibility(DraftListFragment.this.isEdit ? 0 : 8);
                viewFindViewById2.setOnClickListener(this.subviewClickListener);
            }
            viewCreateView.setOnClickListener(this.subviewClickListener);
            return viewCreateView;
        }

        private Drawable getIconDrawable(int i) {
            int i2 = i == 0 ? R.drawable.compose_button_blog : i == 9 ? R.drawable.compose_button_story : i == 4 ? R.drawable.compose_button_poll : i == 7 ? R.drawable.compose_button_image : i == 3 ? R.drawable.compose_button_question : i == 5 ? R.drawable.compose_button_link : i == 6 ? R.drawable.compose_button_quiz : 0;
            if (i2 == 0) {
                return null;
            }
            return ContextCompat.getDrawable(getContext(), i2);
        }

        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            logClickEvent(ActSemantic.pageEnter);
            if (DraftListFragment.this.isEdit) {
                if (view2 == null || view2.getId() != R.id.delete) {
                    return false;
                }
                DraftListFragment.this.draftManager.deleteDraft(getItem(i).info.id);
                rebuild();
                return false;
            }
            Stub item = getItem(i);
            Class cls = null;
            if ("blog".equals(item.info.type)) {
                cls = BlogPostActivity.class;
            } else if ("link".equals(item.info.type)) {
                cls = LinkPostActivity.class;
            } else if ("item".equals(item.info.type)) {
                cls = ItemPostActivity.class;
            } else if ("topic".equals(item.info.type)) {
                cls = TopicPostActivity.class;
            } else if (EntryManager.ENTRY_QUIZZES.equals(item.info.type)) {
                cls = QuizPostActivity.class;
            } else if (EntryManager.ENTRY_POLL.equals(item.info.type)) {
                cls = PollPostActivity.class;
            } else if ("image".equals(item.info.type)) {
                cls = ImagePostActivity.class;
            } else if ("thread".equals(item.info.type)) {
                cls = ThreadPostNewActivity.class;
            } else if (Scopes.PROFILE.equals(item.info.type)) {
                cls = UserProfilePostActivity.class;
            } else if ("story".equals(item.info.type)) {
                cls = StoryPostActivity.class;
            }
            if (cls == null) {
                Log.e("unknown draft type " + item.info.type);
                return true;
            }
            Intent intent = new Intent(getContext(), (Class<?>) cls);
            intent.putExtra("draftId", item.info.id);
            intent.putExtra("Source", "Drafts");
            intent.putExtra(CommentListFragment.COMMENT_KEY_LOGGING_SOURCE, LoggingSource.DraftBox.name());
            startActivity(intent);
            return true;
        }
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityCreated(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        super.onActivityCreated(bundle);
        if (getActivity() == null) {
            return;
        }
        customLeftView();
        customRightView();
    }

    private void customLeftView() throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.actionbar_layout, (ViewGroup) null);
        ((TextView) viewInflate.findViewById(R.id.actionbar_title)).setText(R.string.post_saved_drafts);
        setActionBarLeftView(viewInflate);
        this.leftBtn = (TintButton) viewInflate.findViewById(R.id.actionbar_back);
        this.leftBtn.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.post.draft.-$$Lambda$DraftListFragment$wojyrWn-e64vTBB57PP17X2gkZo
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$customLeftView$0$DraftListFragment(view);
            }
        });
    }

    public /* synthetic */ void lambda$customLeftView$0$DraftListFragment(View view) {
        this.isEdit = !this.isEdit;
        if (!this.isEdit) {
            updateEditView();
        } else {
            finish();
        }
    }

    private void customRightView() throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.draft_list_action_bar_right, (ViewGroup) null);
        setActionBarRightView(viewInflate);
        this.rightBtn = (AppCompatButton) viewInflate.findViewById(R.id.delete_btn);
        this.rightBtn.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.post.draft.-$$Lambda$DraftListFragment$96YhsqB2szqNKWdqsdL4APBwHCE
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$customRightView$1$DraftListFragment(view);
            }
        });
    }

    public /* synthetic */ void lambda$customRightView$1$DraftListFragment(View view) {
        if (!this.isEdit) {
            this.isEdit = true;
            updateEditView();
        } else {
            deleteAllDrafts();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateEditView() {
        this.leftBtn.setImageDrawable(ContextCompat.getDrawable(getContext(), this.isEdit ? R.drawable.ic_actionbar_close : R.drawable.ic_back_mirror));
        this.rightBtn.setText(this.isEdit ? R.string.delete_all : R.string.edit);
        this.rightBtn.setBackgroundDrawable(ContextCompat.getDrawable(getContext(), this.isEdit ? R.drawable.draft_list_delete_bg : R.drawable.draft_list_edit_bg));
        this.adapter.notifyDataSetChanged();
    }

    private void deleteAllDrafts() {
        ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
        actionSheetDialog.setTitle(R.string.post_draft_delete_all_message);
        actionSheetDialog.addItem(R.string.post_draft_delete_all, 1);
        actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.post.draft.DraftListFragment.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
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
}
