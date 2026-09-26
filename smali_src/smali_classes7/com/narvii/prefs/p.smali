.class public final synthetic Lcom/narvii/prefs/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field public final synthetic a:Lcom/narvii/prefs/SettingsFragment$Adapter;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/prefs/SettingsFragment$Adapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/prefs/p;->a:Lcom/narvii/prefs/SettingsFragment$Adapter;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/prefs/p;->a:Lcom/narvii/prefs/SettingsFragment$Adapter;

    check-cast p1, Lcom/narvii/list/prefs/PrefsEntry;

    invoke-static {v0, p1}, Lcom/narvii/prefs/SettingsFragment$Adapter;->f(Lcom/narvii/prefs/SettingsFragment$Adapter;Lcom/narvii/list/prefs/PrefsEntry;)V

    return-void
.end method
