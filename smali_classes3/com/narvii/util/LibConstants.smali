.class public Lcom/narvii/util/LibConstants;
.super Ljava/lang/Object;
.source "LibConstants.java"


# static fields
.field public static final GRID_ROW:Lcom/narvii/util/Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 5
    new-instance v0, Lcom/narvii/util/Tag;

    const-string v1, "gridRow"

    invoke-direct {v0, v1}, Lcom/narvii/util/Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/narvii/util/LibConstants;->GRID_ROW:Lcom/narvii/util/Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
