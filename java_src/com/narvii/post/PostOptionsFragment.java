package com.narvii.post;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWillFinishListener;
import com.narvii.app.NVActivity;
import com.narvii.app.NVFragment;
import com.narvii.util.ActionBarIcon;
import com.narvii.util.JacksonUtils;

/* loaded from: classes3.dex */
public class PostOptionsFragment extends NVFragment implements View.OnClickListener, FragmentWillFinishListener {
    boolean disableAnim = false;
    ObjectNode extensions;
    View v0;
    View v1;

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
        setTitle(R.string.post_options);
        this.extensions = JacksonUtils.createObjectNode(getStringParam("extensions"));
        this.disableAnim = "none".equals(JacksonUtils.nodeString(this.extensions, "coverAnimation"));
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.post_options_layout, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.v1 = view.findViewById(R.id.post_option_anim_1);
        this.v0 = view.findViewById(R.id.post_option_anim_0);
        ((TextView) this.v1.findViewById(R.id.text)).setText(R.string.post_cover_options_anim_1);
        ((TextView) this.v0.findViewById(R.id.text)).setText(R.string.post_cover_options_anim_0);
        this.v1.setBackgroundResource(R.drawable.list_selector);
        this.v0.setBackgroundResource(R.drawable.list_selector);
        this.v1.setOnClickListener(this);
        this.v0.setOnClickListener(this);
        updateView();
    }

    @Override // android.support.v4.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        menu.add(0, android.R.string.ok, 0, android.R.string.ok).setIcon(new ActionBarIcon(getContext(), R.string.fa_check)).setShowAsAction(2);
    }

    @Override // android.support.v4.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 17039370) {
            finish();
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // com.narvii.app.FragmentWillFinishListener
    public void willFinish(NVActivity nVActivity) {
        Intent intent = new Intent();
        if (this.disableAnim) {
            this.extensions.put("coverAnimation", "none");
        } else {
            this.extensions.put("coverAnimation", (String) null);
        }
        intent.putExtra("extensions", JacksonUtils.writeAsString(this.extensions));
        nVActivity.setResult(-1, intent);
    }

    private void updateView() {
        this.v1.findViewById(R.id.stub1).setVisibility(this.disableAnim ? 4 : 0);
        this.v0.findViewById(R.id.stub1).setVisibility(this.disableAnim ? 0 : 4);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.post_option_anim_1) {
            this.disableAnim = false;
        }
        if (view.getId() == R.id.post_option_anim_0) {
            this.disableAnim = true;
        }
        updateView();
    }
}
