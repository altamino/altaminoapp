.class public final synthetic Lcom/narvii/prefs/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field public final synthetic a:Lcom/narvii/prefs/DevSettingsFragment;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/narvii/prefs/model/DevOption;

.field public final synthetic d:Lcom/narvii/prefs/DevSettingsFragment$Adapter;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/prefs/DevSettingsFragment;Ljava/lang/String;Lcom/narvii/prefs/model/DevOption;Lcom/narvii/prefs/DevSettingsFragment$Adapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/prefs/i;->a:Lcom/narvii/prefs/DevSettingsFragment;

    iput-object p2, p0, Lcom/narvii/prefs/i;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/narvii/prefs/i;->c:Lcom/narvii/prefs/model/DevOption;

    iput-object p4, p0, Lcom/narvii/prefs/i;->d:Lcom/narvii/prefs/DevSettingsFragment$Adapter;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/narvii/prefs/i;->a:Lcom/narvii/prefs/DevSettingsFragment;

    iget-object v1, p0, Lcom/narvii/prefs/i;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/narvii/prefs/i;->c:Lcom/narvii/prefs/model/DevOption;

    iget-object v3, p0, Lcom/narvii/prefs/i;->d:Lcom/narvii/prefs/DevSettingsFragment$Adapter;

    check-cast p1, Lcom/narvii/list/prefs/PrefsToggle;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/narvii/prefs/DevSettingsFragment$Adapter;->f(Lcom/narvii/prefs/DevSettingsFragment;Ljava/lang/String;Lcom/narvii/prefs/model/DevOption;Lcom/narvii/prefs/DevSettingsFragment$Adapter;Lcom/narvii/list/prefs/PrefsToggle;)V

    return-void
.end method
