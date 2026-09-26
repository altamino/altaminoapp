package ka;

import aa.h;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.grack.nanojson.JsonObject;
import com.mixpanel.android.mpmetrics.e;
import com.narvii.master.home.profile.GlobalProfileFragment;
import ja.i;
import java.util.List;
import oa.k;
import oa.l;
import oa.o;
import qa.y;

/* JADX INFO: loaded from: classes6.dex */
public class d implements l {
    private final JsonObject itemObject;

    @Override // oa.l
    public boolean k() {
        return false;
    }

    @Override // oa.l
    public /* synthetic */ boolean l() {
        return k.b(this);
    }

    @Override // oa.l
    public /* synthetic */ String m() {
        return k.a(this);
    }

    @Override // oa.l
    public String a() {
        return y.v(this.itemObject.getObject(GlobalProfileFragment.KEY_USER).getString("permalink_url"));
    }

    @Override // oa.l
    public boolean b() throws h {
        return this.itemObject.getObject(GlobalProfileFragment.KEY_USER).getBoolean("verified");
    }

    @Override // oa.l
    public String c() {
        return this.itemObject.getObject(GlobalProfileFragment.KEY_USER).getString("username");
    }

    @Override // x9.f
    public List<x9.c> e() throws h {
        return i.e(this.itemObject);
    }

    @Override // oa.l
    public List<x9.c> f() {
        return i.c(this.itemObject.getObject(GlobalProfileFragment.KEY_USER).getString("avatar_url"));
    }

    @Override // oa.l
    public long getDuration() {
        return this.itemObject.getLong(TypedValues.TransitionType.S_DURATION) / 1000;
    }

    @Override // x9.f
    public String getName() {
        return this.itemObject.getString("title");
    }

    @Override // oa.l
    public o getStreamType() {
        return o.AUDIO_STREAM;
    }

    @Override // x9.f
    public String getUrl() {
        return y.v(this.itemObject.getString("permalink_url"));
    }

    @Override // oa.l
    public String i() {
        return this.itemObject.getString(e.KEY_CREATED_AT);
    }

    @Override // oa.l
    public org.schabi.newpipe.extractor.localization.e j() throws h {
        return new org.schabi.newpipe.extractor.localization.e(i.m(i()));
    }

    @Override // oa.l
    public long n() {
        return this.itemObject.getLong("playback_count");
    }

    public d(JsonObject jsonObject) {
        this.itemObject = jsonObject;
    }
}
