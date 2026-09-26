package com.narvii.poweruser.history;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.AbsListView;
import android.widget.FrameLayout;
import android.widget.ListAdapter;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import com.facebook.rebound.d;
import com.facebook.rebound.e;
import com.facebook.rebound.i;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.google.firebase.remoteconfig.a;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.list.NVAdapter;
import com.narvii.model.User;
import com.narvii.user.profile.UserProfileFragment;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.util.Utils;
import com.narvii.util.dialog.AlertDialog;
import com.narvii.widget.NVListView;
import com.safedk.android.utils.Logger;

/* JADX INFO: loaded from: classes9.dex */
public class ModerationHistoryFragment extends ModerationHistoryBaseFragment {
    FrameLayout topContainer;
    FrameLayout topContainerParent;

    class Adapter extends ModerationHistoryBaseFragment.ModerationHistorySectionAdapter {
        public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

        public static void safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(NVContext p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

        Adapter() {
            super();
        }

        @Override // com.narvii.poweruser.history.ModerationHistoryBaseFragment.ModerationHistorySectionAdapter, com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            if (obj instanceof ModerationHistory) {
                if (view2 == null) {
                    ModerationHistory moderationHistory = (ModerationHistory) obj;
                    if (moderationHistory.moderationLevel == 3) {
                        final AlertDialog alertDialog = new AlertDialog(getContext());
                        View viewInflate = this.inflater.inflate(R.layout.feed_disable_by_imod_layout, (ViewGroup) null);
                        if (viewInflate.findViewById(R.id.action) != null) {
                            viewInflate.findViewById(R.id.action).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.poweruser.history.ModerationHistoryFragment.Adapter.1
                                @Override // android.view.View.OnClickListener
                                public void onClick(View view3) {
                                    alertDialog.dismiss();
                                }
                            });
                        }
                        alertDialog.setContentView(viewInflate);
                        alertDialog.show();
                    } else if (TextUtils.isEmpty(moderationHistory.objectUrl)) {
                        NVToast.makeText(getContext(), getContext().getResources().getString(R.string.related_page_not_available), 0).show();
                    } else {
                        try {
                            safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, new Intent("android.intent.action.VIEW", Uri.parse(moderationHistory.objectUrl)));
                        } catch (Exception unused) {
                        }
                    }
                    return true;
                }
                if (view2.getId() == R.id.nickname || view2.getId() == R.id.avatar) {
                    safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(this.context, UserProfileFragment.intent(this.context, ((ModerationHistory) obj).author));
                    return true;
                }
                if (view2.getId() == R.id.target_container) {
                    ObjectNode objectNode = ((ModerationHistory) obj).refObject;
                    String strNodeString = objectNode != null ? JacksonUtils.nodeString(objectNode, "uid") : null;
                    if (strNodeString != null) {
                        Intent intent = FragmentWrapperActivity.intent(UserProfileFragment.class);
                        intent.putExtra("id", strNodeString);
                        safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent);
                    }
                    return true;
                }
            }
            return super.onItemClick(listAdapter, i10, obj, view, view2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hideTopContainer() {
        if (this.topContainer == null) {
            return;
        }
        Animation animationLoadAnimation = AnimationUtils.loadAnimation(getContext(), R.anim.slide_out_top);
        animationLoadAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.narvii.poweruser.history.ModerationHistoryFragment.4
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                ModerationHistoryFragment.this.topContainer.setAlpha(0.0f);
                ModerationHistoryFragment.this.topContainer.setVisibility(8);
                ModerationHistoryFragment.this.topContainerParent.setAlpha(0.0f);
                ModerationHistoryFragment.this.topContainerParent.setVisibility(8);
            }
        });
        this.topContainer.startAnimation(animationLoadAnimation);
    }

    private void showTopContainer() {
        if (this.topContainer == null) {
            return;
        }
        this.topContainerParent.setAlpha(1.0f);
        this.topContainer.setAlpha(1.0f);
        this.topContainer.setVisibility(0);
        this.topContainerParent.setVisibility(0);
        e eVarC = i.g().c();
        if (eVarC.c() == a.DEFAULT_VALUE_FOR_DOUBLE) {
            addFilterFragment();
        }
        eVarC.a(new d() { // from class: com.narvii.poweruser.history.ModerationHistoryFragment.3
            @Override // com.facebook.rebound.d, com.facebook.rebound.g
            public void onSpringUpdate(e eVar) {
                ModerationHistoryFragment.this.topContainer.setTranslationY(((((float) eVar.c()) - 1.0f) * Utils.dpToPx(ModerationHistoryFragment.this.getContext(), 400.0f)) - Utils.dpToPx(ModerationHistoryFragment.this.getContext(), 30.0f));
            }
        });
        eVarC.o(1.0d);
    }

    @Override // com.narvii.poweruser.history.ModerationHistoryBaseFragment, com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        Adapter adapter = new Adapter();
        this.moderationHistoryAdapter = adapter;
        return adapter;
    }

    private void addFilterFragment() {
        FragmentManager supportFragmentManager = getActivity().getSupportFragmentManager();
        FragmentTransaction fragmentTransactionQ = supportFragmentManager.q();
        if (supportFragmentManager.m0("filter") == null) {
            MembersFilterFragment membersFilterFragment = new MembersFilterFragment();
            membersFilterFragment.setFilterItemClickListener(new MembersFilterFragment.FilterItemClickListener() { // from class: com.narvii.poweruser.history.ModerationHistoryFragment.5
                @Override // com.narvii.poweruser.history.MembersFilterFragment.FilterItemClickListener
                public void onItemClicked(User user) {
                    if (user != null) {
                        ModerationHistoryFragment.this.operatorId = user.uid();
                        ModerationHistoryFragment.this.setTitle(user.nickname());
                    } else {
                        ModerationHistoryFragment moderationHistoryFragment = ModerationHistoryFragment.this;
                        moderationHistoryFragment.operatorId = null;
                        moderationHistoryFragment.setTitle(moderationHistoryFragment.getString(R.string.moderation_history));
                    }
                    ModerationHistoryFragment.this.hideTopContainer();
                    ModerationHistoryBaseAdapter moderationHistoryBaseAdapter = ModerationHistoryFragment.this.moderationHistoryAdapter;
                    if (moderationHistoryBaseAdapter != null) {
                        moderationHistoryBaseAdapter.resetList();
                    }
                }
            });
            fragmentTransactionQ.c(R.id.top_container, membersFilterFragment, "filter");
            fragmentTransactionQ.j();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        menu.add(0, R.string.filter, 1, R.string.filter).setIcon(R.drawable.ic_flag_sort).setShowAsAction(2);
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != R.string.filter) {
            return super.onOptionsItemSelected(menuItem);
        }
        if (this.topContainer.getAlpha() == 0.0f) {
            showTopContainer();
            return true;
        }
        hideTopContainer();
        return true;
    }

    @Override // com.narvii.poweruser.history.ModerationHistoryBaseFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        FrameLayout frameLayout = (FrameLayout) view.findViewById(R.id.top_container);
        this.topContainer = frameLayout;
        frameLayout.setAlpha(0.0f);
        ((NVListView) getListView()).addOnScrollListener(new AbsListView.OnScrollListener() { // from class: com.narvii.poweruser.history.ModerationHistoryFragment.1
            @Override // android.widget.AbsListView.OnScrollListener
            public void onScroll(AbsListView absListView, int i10, int i11, int i12) {
            }

            @Override // android.widget.AbsListView.OnScrollListener
            public void onScrollStateChanged(AbsListView absListView, int i10) {
                FrameLayout frameLayout2;
                if (i10 == 0 || (frameLayout2 = ModerationHistoryFragment.this.topContainer) == null || frameLayout2.getVisibility() != 0) {
                    return;
                }
                ModerationHistoryFragment.this.hideTopContainer();
            }
        });
        FrameLayout frameLayout2 = (FrameLayout) view.findViewById(R.id.top_container_parent);
        this.topContainerParent = frameLayout2;
        frameLayout2.setAlpha(0.0f);
        this.topContainerParent.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.poweruser.history.ModerationHistoryFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                ModerationHistoryFragment.this.hideTopContainer();
            }
        });
    }
}
