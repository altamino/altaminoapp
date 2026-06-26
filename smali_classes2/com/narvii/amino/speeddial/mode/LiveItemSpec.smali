.class public Lcom/narvii/amino/speeddial/mode/LiveItemSpec;
.super Ljava/lang/Object;
.source "LiveItemSpec.java"


# instance fields
.field public backgroundColor:I

.field public backgroundUrl:Ljava/lang/String;

.field public iconId:I

.field public titleId:I


# direct methods
.method public constructor <init>(III)V
    .locals 1

    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/narvii/amino/speeddial/mode/LiveItemSpec;-><init>(IIILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lcom/narvii/amino/speeddial/mode/LiveItemSpec;->iconId:I

    .line 19
    iput p2, p0, Lcom/narvii/amino/speeddial/mode/LiveItemSpec;->titleId:I

    .line 20
    iput p3, p0, Lcom/narvii/amino/speeddial/mode/LiveItemSpec;->backgroundColor:I

    .line 21
    iput-object p4, p0, Lcom/narvii/amino/speeddial/mode/LiveItemSpec;->backgroundUrl:Ljava/lang/String;

    return-void
.end method
