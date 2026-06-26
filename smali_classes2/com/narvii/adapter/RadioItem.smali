.class public Lcom/narvii/adapter/RadioItem;
.super Ljava/lang/Object;
.source "RadioItem.java"


# instance fields
.field public desc:Ljava/lang/String;

.field public enabled:Z

.field public id:I

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/narvii/adapter/RadioItem;->enabled:Z

    .line 15
    iput p1, p0, Lcom/narvii/adapter/RadioItem;->id:I

    .line 16
    iput-object p2, p0, Lcom/narvii/adapter/RadioItem;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/narvii/adapter/RadioItem;->enabled:Z

    .line 20
    iput p1, p0, Lcom/narvii/adapter/RadioItem;->id:I

    .line 21
    iput-object p2, p0, Lcom/narvii/adapter/RadioItem;->name:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lcom/narvii/adapter/RadioItem;->desc:Ljava/lang/String;

    return-void
.end method
