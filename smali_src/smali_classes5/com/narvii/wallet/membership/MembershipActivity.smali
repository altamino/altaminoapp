.class public final Lcom/narvii/wallet/membership/MembershipActivity;
.super Lcom/narvii/app/FragmentWrapperActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/wallet/membership/MembershipActivity$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/narvii/wallet/membership/MembershipActivity$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/narvii/wallet/membership/MembershipActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/narvii/wallet/membership/MembershipActivity$Companion;-><init>(Lkotlin/jvm/internal/k;)V

    sput-object v0, Lcom/narvii/wallet/membership/MembershipActivity;->Companion:Lcom/narvii/wallet/membership/MembershipActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/app/FragmentWrapperActivity;-><init>()V

    .line 4
    return-void
.end method

.method public static final createMembershipIntent()Landroid/content/Intent;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/narvii/wallet/membership/MembershipActivity;->Companion:Lcom/narvii/wallet/membership/MembershipActivity$Companion;

    invoke-virtual {v0}, Lcom/narvii/wallet/membership/MembershipActivity$Companion;->createMembershipIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
