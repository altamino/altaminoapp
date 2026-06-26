.class Lcom/narvii/wallet/MembershipMainRecyclerFragment$Privileges;
.super Lcom/narvii/model/NVObject;
.source "MembershipMainRecyclerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/wallet/MembershipMainRecyclerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Privileges"
.end annotation


# instance fields
.field content:I

.field icon:I

.field title:I


# direct methods
.method constructor <init>(III)V
    .locals 0

    .line 606
    invoke-direct {p0}, Lcom/narvii/model/NVObject;-><init>()V

    .line 607
    iput p1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment$Privileges;->icon:I

    .line 608
    iput p2, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment$Privileges;->title:I

    .line 609
    iput p3, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment$Privileges;->content:I

    return-void
.end method


# virtual methods
.method public id()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public objectType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public parentId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public status()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public uid()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
