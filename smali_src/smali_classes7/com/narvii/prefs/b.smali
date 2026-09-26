.class public final synthetic Lcom/narvii/prefs/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field public final synthetic a:Lcom/narvii/prefs/AccountSettingFragment$Adapter;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/prefs/AccountSettingFragment$Adapter;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/prefs/b;->a:Lcom/narvii/prefs/AccountSettingFragment$Adapter;

    iput-object p2, p0, Lcom/narvii/prefs/b;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/prefs/b;->a:Lcom/narvii/prefs/AccountSettingFragment$Adapter;

    iget-object v1, p0, Lcom/narvii/prefs/b;->b:Ljava/lang/String;

    check-cast p1, Lcom/narvii/list/prefs/PrefsEntry;

    invoke-static {v0, v1, p1}, Lcom/narvii/prefs/AccountSettingFragment$Adapter;->f(Lcom/narvii/prefs/AccountSettingFragment$Adapter;Ljava/lang/String;Lcom/narvii/list/prefs/PrefsEntry;)V

    return-void
.end method
