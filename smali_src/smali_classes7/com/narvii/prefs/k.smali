.class public final synthetic Lcom/narvii/prefs/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/narvii/prefs/SettingsFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/prefs/SettingsFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/prefs/k;->a:Lcom/narvii/prefs/SettingsFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/prefs/k;->a:Lcom/narvii/prefs/SettingsFragment;

    invoke-static {v0}, Lcom/narvii/prefs/SettingsFragment;->u(Lcom/narvii/prefs/SettingsFragment;)V

    return-void
.end method
