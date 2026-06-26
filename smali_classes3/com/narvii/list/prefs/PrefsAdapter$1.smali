.class Lcom/narvii/list/prefs/PrefsAdapter$1;
.super Ljava/lang/Object;
.source "PrefsAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/list/prefs/PrefsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/list/prefs/PrefsAdapter;

.field final synthetic val$prefsToggle:Lcom/narvii/list/prefs/PrefsToggle;


# direct methods
.method constructor <init>(Lcom/narvii/list/prefs/PrefsAdapter;Lcom/narvii/list/prefs/PrefsToggle;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lcom/narvii/list/prefs/PrefsAdapter$1;->this$0:Lcom/narvii/list/prefs/PrefsAdapter;

    iput-object p2, p0, Lcom/narvii/list/prefs/PrefsAdapter$1;->val$prefsToggle:Lcom/narvii/list/prefs/PrefsToggle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 271
    iget-object p1, p0, Lcom/narvii/list/prefs/PrefsAdapter$1;->val$prefsToggle:Lcom/narvii/list/prefs/PrefsToggle;

    iput-boolean p2, p1, Lcom/narvii/list/prefs/PrefsToggle;->on:Z

    .line 272
    iget-object p2, p1, Lcom/narvii/list/prefs/PrefsToggle;->callback:Lcom/narvii/util/Callback;

    if-eqz p2, :cond_0

    .line 273
    invoke-interface {p2, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
