.class public final Lcom/narvii/app/NVScrollablePagerAdapter$TabInfo;
.super Ljava/lang/Object;
.source "NVScrollablePagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/app/NVScrollablePagerAdapter;
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

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/narvii/app/NVScrollablePagerAdapter$TabInfo;->id:Ljava/lang/String;

    .line 79
    iput-object p2, p0, Lcom/narvii/app/NVScrollablePagerAdapter$TabInfo;->title:Ljava/lang/String;

    .line 80
    iput-object p3, p0, Lcom/narvii/app/NVScrollablePagerAdapter$TabInfo;->view:Landroid/view/View;

    .line 81
    iput-object p4, p0, Lcom/narvii/app/NVScrollablePagerAdapter$TabInfo;->clazz:Ljava/lang/Class;

    .line 82
    iput-object p5, p0, Lcom/narvii/app/NVScrollablePagerAdapter$TabInfo;->args:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public hashCode()I
    .locals 3

    .line 87
    iget-object v0, p0, Lcom/narvii/app/NVScrollablePagerAdapter$TabInfo;->id:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    iget-object v2, p0, Lcom/narvii/app/NVScrollablePagerAdapter$TabInfo;->clazz:Ljava/lang/Class;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    or-int/2addr v0, v1

    return v0
.end method
