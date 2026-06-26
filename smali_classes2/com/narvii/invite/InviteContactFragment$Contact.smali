.class public Lcom/narvii/invite/InviteContactFragment$Contact;
.super Ljava/lang/Object;
.source "InviteContactFragment.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/invite/InviteContactFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Contact"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/narvii/invite/InviteContactFragment$Contact;",
        ">;"
    }
.end annotation


# instance fields
.field public email:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public phone:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getCompareKey()Ljava/lang/String;
    .locals 2

    .line 415
    invoke-virtual {p0}, Lcom/narvii/invite/InviteContactFragment$Contact;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 419
    :cond_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/narvii/invite/InviteContactFragment$Contact;)I
    .locals 1

    .line 424
    invoke-direct {p0}, Lcom/narvii/invite/InviteContactFragment$Contact;->getCompareKey()Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-direct {p1}, Lcom/narvii/invite/InviteContactFragment$Contact;->getCompareKey()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 375
    check-cast p1, Lcom/narvii/invite/InviteContactFragment$Contact;

    invoke-virtual {p0, p1}, Lcom/narvii/invite/InviteContactFragment$Contact;->compareTo(Lcom/narvii/invite/InviteContactFragment$Contact;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 407
    :cond_0
    instance-of v1, p1, Lcom/narvii/invite/InviteContactFragment$Contact;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 408
    check-cast p1, Lcom/narvii/invite/InviteContactFragment$Contact;

    .line 409
    iget-object v1, p0, Lcom/narvii/invite/InviteContactFragment$Contact;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/narvii/invite/InviteContactFragment$Contact;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/narvii/invite/InviteContactFragment$Contact;->phone:Ljava/lang/String;

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p1, Lcom/narvii/invite/InviteContactFragment$Contact;->phone:Ljava/lang/String;

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/narvii/invite/InviteContactFragment$Contact;->email:Ljava/lang/String;

    iget-object p1, p1, Lcom/narvii/invite/InviteContactFragment$Contact;->email:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public getContactText()Ljava/lang/String;
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/narvii/invite/InviteContactFragment$Contact;->phone:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/narvii/invite/InviteContactFragment$Contact;->phone:Ljava/lang/String;

    return-object v0

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/narvii/invite/InviteContactFragment$Contact;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/narvii/invite/InviteContactFragment$Contact;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/narvii/invite/InviteContactFragment$Contact;->name:Ljava/lang/String;

    return-object v0

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/narvii/invite/InviteContactFragment$Contact;->phone:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 385
    iget-object v0, p0, Lcom/narvii/invite/InviteContactFragment$Contact;->phone:Ljava/lang/String;

    return-object v0

    .line 387
    :cond_1
    iget-object v0, p0, Lcom/narvii/invite/InviteContactFragment$Contact;->email:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 399
    iget-object v1, p0, Lcom/narvii/invite/InviteContactFragment$Contact;->name:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/narvii/invite/InviteContactFragment$Contact;->phone:Ljava/lang/String;

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/narvii/invite/InviteContactFragment$Contact;->email:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
