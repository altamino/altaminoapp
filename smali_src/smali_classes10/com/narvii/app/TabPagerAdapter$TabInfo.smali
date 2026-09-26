.class public final Lcom/narvii/app/TabPagerAdapter$TabInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/app/TabPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TabInfo"
.end annotation


# instance fields
.field public final args:Landroid/os/Bundle;

.field public final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final id:Ljava/lang/String;

.field public final title:Ljava/lang/String;

.field public final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/app/TabPagerAdapter$TabInfo;->id:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/app/TabPagerAdapter$TabInfo;->title:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/narvii/app/TabPagerAdapter$TabInfo;->view:Landroid/view/View;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/narvii/app/TabPagerAdapter$TabInfo;->clazz:Ljava/lang/Class;

    .line 12
    .line 13
    iput-object p5, p0, Lcom/narvii/app/TabPagerAdapter$TabInfo;->args:Landroid/os/Bundle;

    .line 14
    return-void
.end method


# virtual methods
.method public hashCode()I
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/app/TabPagerAdapter$TabInfo;->id:Ljava/lang/String;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    move v0, v1

    .line 7
    goto :goto_0

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 11
    move-result v0

    .line 12
    .line 13
    :goto_0
    iget-object v2, p0, Lcom/narvii/app/TabPagerAdapter$TabInfo;->clazz:Ljava/lang/Class;

    .line 14
    .line 15
    if-nez v2, :cond_1

    .line 16
    goto :goto_1

    .line 17
    .line 18
    .line 19
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 20
    move-result v1

    .line 21
    :goto_1
    or-int/2addr v0, v1

    .line 22
    return v0
.end method
