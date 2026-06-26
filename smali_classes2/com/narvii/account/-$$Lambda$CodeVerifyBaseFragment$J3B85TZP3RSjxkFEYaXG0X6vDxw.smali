.class public final synthetic Lcom/narvii/account/-$$Lambda$CodeVerifyBaseFragment$J3B85TZP3RSjxkFEYaXG0X6vDxw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/narvii/account/CodeVerifyBaseFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/account/CodeVerifyBaseFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/account/-$$Lambda$CodeVerifyBaseFragment$J3B85TZP3RSjxkFEYaXG0X6vDxw;->f$0:Lcom/narvii/account/CodeVerifyBaseFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/narvii/account/-$$Lambda$CodeVerifyBaseFragment$J3B85TZP3RSjxkFEYaXG0X6vDxw;->f$0:Lcom/narvii/account/CodeVerifyBaseFragment;

    invoke-virtual {v0}, Lcom/narvii/account/CodeVerifyBaseFragment;->lambda$resetTimerCount$0$CodeVerifyBaseFragment()V

    return-void
.end method
