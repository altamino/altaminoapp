.class public final synthetic Lcom/narvii/prefs/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field public final synthetic a:Lcom/narvii/prefs/DevSettingsFragment;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/narvii/prefs/model/DevOption;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/prefs/DevSettingsFragment;Ljava/lang/String;Lcom/narvii/prefs/model/DevOption;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/prefs/j;->a:Lcom/narvii/prefs/DevSettingsFragment;

    iput-object p2, p0, Lcom/narvii/prefs/j;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/narvii/prefs/j;->c:Lcom/narvii/prefs/model/DevOption;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/narvii/prefs/j;->a:Lcom/narvii/prefs/DevSettingsFragment;

    iget-object v1, p0, Lcom/narvii/prefs/j;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/narvii/prefs/j;->c:Lcom/narvii/prefs/model/DevOption;

    check-cast p1, Lcom/narvii/list/prefs/PrefsEntry;

    invoke-static {v0, v1, v2, p1}, Lcom/narvii/prefs/DevSettingsFragment$Adapter;->g(Lcom/narvii/prefs/DevSettingsFragment;Ljava/lang/String;Lcom/narvii/prefs/model/DevOption;Lcom/narvii/list/prefs/PrefsEntry;)V

    return-void
.end method
