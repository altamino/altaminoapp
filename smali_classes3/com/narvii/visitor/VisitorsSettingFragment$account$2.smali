.class final Lcom/narvii/visitor/VisitorsSettingFragment$account$2;
.super Lkotlin/jvm/internal/Lambda;
.source "VisitorsSettingFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/visitor/VisitorsSettingFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/narvii/account/AccountService;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/visitor/VisitorsSettingFragment;


# direct methods
.method constructor <init>(Lcom/narvii/visitor/VisitorsSettingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/visitor/VisitorsSettingFragment$account$2;->this$0:Lcom/narvii/visitor/VisitorsSettingFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/narvii/account/AccountService;
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/narvii/visitor/VisitorsSettingFragment$account$2;->this$0:Lcom/narvii/visitor/VisitorsSettingFragment;

    const-string v1, "account"

    invoke-virtual {v0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/narvii/visitor/VisitorsSettingFragment$account$2;->invoke()Lcom/narvii/account/AccountService;

    move-result-object v0

    return-object v0
.end method
