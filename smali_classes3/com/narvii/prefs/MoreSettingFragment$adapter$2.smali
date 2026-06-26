.class final Lcom/narvii/prefs/MoreSettingFragment$adapter$2;
.super Lkotlin/jvm/internal/Lambda;
.source "MoreSettingFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/prefs/MoreSettingFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/narvii/prefs/MoreSettingFragment$Adapter;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/prefs/MoreSettingFragment;


# direct methods
.method constructor <init>(Lcom/narvii/prefs/MoreSettingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/prefs/MoreSettingFragment$adapter$2;->this$0:Lcom/narvii/prefs/MoreSettingFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/narvii/prefs/MoreSettingFragment$Adapter;
    .locals 2

    .line 48
    new-instance v0, Lcom/narvii/prefs/MoreSettingFragment$Adapter;

    iget-object v1, p0, Lcom/narvii/prefs/MoreSettingFragment$adapter$2;->this$0:Lcom/narvii/prefs/MoreSettingFragment;

    invoke-direct {v0, v1, v1}, Lcom/narvii/prefs/MoreSettingFragment$Adapter;-><init>(Lcom/narvii/prefs/MoreSettingFragment;Lcom/narvii/app/NVContext;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lcom/narvii/prefs/MoreSettingFragment$adapter$2;->invoke()Lcom/narvii/prefs/MoreSettingFragment$Adapter;

    move-result-object v0

    return-object v0
.end method
