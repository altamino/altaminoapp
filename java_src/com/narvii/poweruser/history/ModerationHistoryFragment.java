package com.narvii.poweruser.history;

import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
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
import com.facebook.rebound.SimpleSpringListener;
import com.facebook.rebound.Spring;
import com.facebook.rebound.SpringSystem;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.model.User;
import com.narvii.poweruser.history.MembersFilterFragment;
import com.narvii.poweruser.history.ModerationHistoryBaseFragment;
import com.narvii.user.profile.UserProfileFragment;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.util.Utils;
import com.narvii.util.dialog.AlertDialog;
import com.narvii.widget.NVListView;

/* loaded from: classes3.dex */
public class ModerationHistoryFragment extends ModerationHistoryBaseFragment {
    FrameLayout topContainer;
    FrameLayout topContainerParent;

    @Override // android.support.v4.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        menu.add(0, R.string.filter, 1, R.string.filter).setIcon(R.drawable.ic_flag_sort).setShowAsAction(2);
    }

    @Override // com.narvii.poweruser.history.ModerationHistoryBaseFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) throws Resources.NotFoundException {
        super.onViewCreated(view, bundle);
        this.topContainer = (FrameLayout) view.findViewById(R.id.top_container);
        this.topContainer.setAlpha(0.0f);
        ((NVListView) getListView()).addOnScrollListener(new AbsListView.OnScrollListener() { // from class: com.narvii.poweruser.history.ModerationHistoryFragment.1
            @Override // android.widget.AbsListView.OnScrollListener
            public void onScroll(AbsListView absListView, int i, int i2, int i3) {
            }

            @Override // android.widget.AbsListView.OnScrollListener
            public void onScrollStateChanged(AbsListView absListView, int i) throws Resources.NotFoundException {
                FrameLayout frameLayout;
                if (i == 0 || (frameLayout = ModerationHistoryFragment.this.topContainer) == null || frameLayout.getVisibility() != 0) {
                    return;
                }
                ModerationHistoryFragment.this.hideTopContainer();
            }
        });
        this.topContainerParent = (FrameLayout) view.findViewById(R.id.top_container_parent);
        this.topContainerParent.setAlpha(0.0f);
        this.topContainerParent.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.poweruser.history.ModerationHistoryFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) throws Resources.NotFoundException {
                ModerationHistoryFragment.this.hideTopContainer();
            }
        });
    }

    @Override // com.narvii.poweruser.history.ModerationHistoryBaseFragment, com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        this.moderationHistoryAdapter = new Adapter();
        return this.moderationHistoryAdapter;
    }

    class Adapter extends ModerationHistoryBaseFragment.ModerationHistorySectionAdapter {
        Adapter() {
            super();
        }

        @Override // com.narvii.poweruser.history.ModerationHistoryBaseFragment.ModerationHistorySectionAdapter, com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
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
                    } else if (!TextUtils.isEmpty(moderationHistory.objectUrl)) {
                        try {
                            startActivity(new Intent("android.intent.action.VIEW", Uri.parse(moderationHistory.objectUrl)));
                        } catch (Exception unused) {
                        }
                    } else {
                        NVToast.makeText(getContext(), getContext().getResources().getString(R.string.related_page_not_available), 0).show();
                    }
                    return true;
                }
                if (view2.getId() == R.id.nickname || view2.getId() == R.id.avatar) {
                    this.context.startActivity(UserProfileFragment.intent(this.context, ((ModerationHistory) obj).author));
                    return true;
                }
                if (view2.getId() == R.id.target_container) {
                    ObjectNode objectNode = ((ModerationHistory) obj).refObject;
                    String strNodeString = objectNode != null ? JacksonUtils.nodeString(objectNode, "uid") : null;
                    if (strNodeString != null) {
                        Intent intent = FragmentWrapperActivity.intent(UserProfileFragment.class);
                        intent.putExtra("id", strNodeString);
                        startActivity(intent);
                    }
                    return true;
                }
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }
    }

    @Override // android.support.v4.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) throws Resources.NotFoundException {
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

    private void showTopContainer() {
        if (this.topContainer == null) {
            return;
        }
        this.topContainerParent.setAlpha(1.0f);
        this.topContainer.setAlpha(1.0f);
        this.topContainer.setVisibility(0);
        this.topContainerParent.setVisibility(0);
        Spring springCreateSpring = SpringSystem.create().createSpring();
        if (springCreateSpring.getCurrentValue() == 0.0d) {
            addFilterFragment();
        }
        springCreateSpring.addListener(new SimpleSpringListener() { // from class: com.narvii.poweruser.history.ModerationHistoryFragment.3
            @Override // com.facebook.rebound.SimpleSpringListener, com.facebook.rebound.SpringListener
            public void onSpringUpdate(Spring spring) {
                ModerationHistoryFragment.this.topContainer.setTranslationY(((((float) spring.getCurrentValue()) - 1.0f) * Utils.dpToPx(ModerationHistoryFragment.this.getContext(), 400.0f)) - Utils.dpToPx(ModerationHistoryFragment.this.getContext(), 30.0f));
            }
        });
        springCreateSpring.setEndValue(1.0d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hideTopContainer() throws Resources.NotFoundException {
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

    private void addFilterFragment() {
        FragmentManager supportFragmentManager = getActivity().getSupportFragmentManager();
        FragmentTransaction fragmentTransactionBeginTransaction = supportFragmentManager.beginTransaction();
        if (supportFragmentManager.findFragmentByTag("filter") == null) {
            MembersFilterFragment membersFilterFragment = new MembersFilterFragment();
            membersFilterFragment.setFilterItemClickListener(new MembersFilterFragment.FilterItemClickListener() { // from class: com.narvii.poweruser.history.ModerationHistoryFragment.5
                @Override // com.narvii.poweruser.history.MembersFilterFragment.FilterItemClickListener
                public void onItemClicked(User user) throws Resources.NotFoundException {
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
            fragmentTransactionBeginTransaction.add(R.id.top_container, membersFilterFragment, "filter");
            fragmentTransactionBeginTransaction.commit();
        }
    }
}
