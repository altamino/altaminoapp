package com.narvii.util.text;

import android.R;
import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.TextView;
import com.narvii.app.NVActivity;
import com.narvii.util.ActionBarIcon;
import com.narvii.util.Callback;

/* JADX INFO: loaded from: classes9.dex */
public class EditTextActivity extends NVActivity {
    private MyEditText editText;

    @Override // com.narvii.app.NVActivity
    public boolean isModel() {
        return true;
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        menu.add(0, R.string.ok, 0, R.string.ok).setIcon(new ActionBarIcon(this, com.narvii.amino.master.R.string.fa_check)).setShowAsAction(2);
        return super.onCreateOptionsMenu(menu);
    }

    @Override // com.narvii.app.NVActivity, android.app.Activity
    public void finish() {
        Intent intent = getIntent();
        intent.putExtra("text", this.editText.getText().toString());
        setResult(-1, intent);
        super.finish();
    }

    @Override // com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(com.narvii.amino.master.R.layout.edit_text_layout);
        MyEditText myEditText = (MyEditText) findViewById(com.narvii.amino.master.R.id.text);
        this.editText = myEditText;
        if (bundle == null) {
            myEditText.setText(getStringParam("text"));
            this.editText.onSaveInstanceState();
        }
        this.editText.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.narvii.util.text.EditTextActivity.1
            @Override // android.widget.TextView.OnEditorActionListener
            public boolean onEditorAction(TextView textView, int i10, KeyEvent keyEvent) {
                if (i10 != 6 && (keyEvent == null || keyEvent.getAction() != 0 || keyEvent.getKeyCode() != 66)) {
                    return false;
                }
                EditTextActivity.this.finish();
                return true;
            }
        });
        this.editText.onKeyPreImeListener = new Callback<KeyEvent>() { // from class: com.narvii.util.text.EditTextActivity.2
            @Override // com.narvii.util.Callback
            public void call(KeyEvent keyEvent) {
                if (keyEvent.getKeyCode() == 4 && keyEvent.getAction() == 1) {
                    EditTextActivity.this.finish();
                }
            }
        };
        String stringParam = getStringParam("title");
        if (!android.text.TextUtils.isEmpty(stringParam)) {
            setTitle(stringParam);
        }
        this.editText.setHint(getStringParam("hint"));
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 17039370) {
            finish();
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }
}
