.class public final synthetic Lcom/narvii/prefs/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field public final synthetic a:Lcom/narvii/prefs/DevSettingsFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/prefs/DevSettingsFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/prefs/h;->a:Lcom/narvii/prefs/DevSettingsFragment;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/prefs/h;->a:Lcom/narvii/prefs/DevSettingsFragment;

    check-cast p1, Lcom/narvii/list/prefs/PrefsToggle;

    invoke-static {v0, p1}, Lcom/narvii/prefs/DevSettingsFragment$Adapter;->h(Lcom/narvii/prefs/DevSettingsFragment;Lcom/narvii/list/prefs/PrefsToggle;)V

    return-void
.end method
