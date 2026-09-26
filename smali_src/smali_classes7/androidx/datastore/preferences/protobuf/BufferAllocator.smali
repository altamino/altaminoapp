.class abstract Landroidx/datastore/preferences/protobuf/BufferAllocator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final UNPOOLED:Landroidx/datastore/preferences/protobuf/BufferAllocator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Landroidx/datastore/preferences/protobuf/BufferAllocator$1;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/datastore/preferences/protobuf/BufferAllocator$1;-><init>()V

    .line 6
    .line 7
    sput-object v0, Landroidx/datastore/preferences/protobuf/BufferAllocator;->UNPOOLED:Landroidx/datastore/preferences/protobuf/BufferAllocator;

    .line 8
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public abstract a(I)Landroidx/datastore/preferences/protobuf/AllocatedBuffer;
.end method

.method public abstract b(I)Landroidx/datastore/preferences/protobuf/AllocatedBuffer;
.end method
