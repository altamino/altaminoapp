package com.narvii.video;

import com.narvii.scene.poll.ScenePollPlayView;
import com.narvii.util.http.ApiRequest;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.HashMap;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import org.jsoup.helper.HttpConnection;

/* loaded from: classes3.dex */
public class EmbedHttpServer implements Runnable {
    private final AtomicReference<Socket> latestSocket;
    private int port;
    private ServerSocket serverSocket;

    protected void handle(String str, String str2, HashMap<String, String> map, InputStream inputStream, ResponseOutputStream responseOutputStream) throws Exception {
    }

    public EmbedHttpServer(int i) {
        this.latestSocket = new AtomicReference<>();
        this.port = i;
    }

    public EmbedHttpServer() {
        this(0);
    }

    public void start() throws IOException {
        if (isStarted()) {
            return;
        }
        this.serverSocket = new ServerSocket(this.port);
        new Thread(this, "embed-http-server").start();
    }

    public void stop() throws IOException {
        ServerSocket serverSocket = this.serverSocket;
        if (serverSocket != null) {
            serverSocket.close();
            this.serverSocket = null;
        }
    }

    public boolean isStarted() {
        ServerSocket serverSocket = this.serverSocket;
        return (serverSocket == null || !serverSocket.isBound() || serverSocket.isClosed()) ? false : true;
    }

    public int getPort() {
        int i = this.port;
        if (i != 0) {
            return i;
        }
        ServerSocket serverSocket = this.serverSocket;
        if (serverSocket == null) {
            return 0;
        }
        return serverSocket.getLocalPort();
    }

    @Override // java.lang.Runnable
    public void run() throws InterruptedException, IOException {
        ServerSocket serverSocket = this.serverSocket;
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(2, 2, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue());
        while (serverSocket == this.serverSocket) {
            try {
                Socket socketAccept = serverSocket.accept();
                Socket socket = this.latestSocket.get();
                this.latestSocket.set(socketAccept);
                threadPoolExecutor.execute(new Worker(socketAccept));
                if (socket != null) {
                    socket.close();
                }
            } catch (IOException unused) {
            }
            if (!serverSocket.isBound() || serverSocket.isClosed()) {
                this.serverSocket = null;
            }
        }
        try {
            threadPoolExecutor.awaitTermination(ScenePollPlayView.POLL_COUNT_DOWN_MS, TimeUnit.MILLISECONDS);
        } catch (InterruptedException unused2) {
        }
    }

    private class Worker implements Runnable {
        final Socket conn;

        public Worker(Socket socket) {
            this.conn = socket;
        }

        @Override // java.lang.Runnable
        public void run() throws IOException {
            Socket socket;
            try {
                HashMap<String, String> map = new HashMap<>();
                InputStream inputStream = this.conn.getInputStream();
                StringBuilder sb = new StringBuilder(512);
                String str = null;
                String strTrim = null;
                while (true) {
                    int i = inputStream.read();
                    if (i == -1) {
                        break;
                    }
                    if (i == 10) {
                        if (sb.length() > 0 && sb.charAt(sb.length() - 1) == '\r') {
                            sb.setLength(sb.length() - 1);
                        }
                        if (sb.length() == 0) {
                            break;
                        }
                        if (str == null) {
                            int iIndexOf = sb.indexOf(" ");
                            String strSubstring = sb.substring(0, iIndexOf);
                            strTrim = sb.substring(iIndexOf + 1, sb.lastIndexOf(" HTTP/")).trim();
                            str = strSubstring;
                        } else {
                            int iIndexOf2 = sb.indexOf(":");
                            map.put(sb.substring(0, iIndexOf2).trim(), sb.substring(iIndexOf2 + 1).trim());
                        }
                        sb.setLength(0);
                    } else {
                        sb.append((char) i);
                    }
                }
                String str2 = map.get("Content-Length");
                int i2 = str2 != null ? Integer.parseInt(str2) : 0;
                OutputStream outputStream = this.conn.getOutputStream();
                if ("100-Continue".equalsIgnoreCase(map.get("Expect"))) {
                    outputStream.write("HTTP/1.1 100 Continue\r\n\r\n".getBytes("ASCII"));
                    outputStream.flush();
                }
                BodyInputStream bodyInputStream = new BodyInputStream(inputStream, i2);
                ResponseOutputStream responseOutputStream = new ResponseOutputStream(outputStream);
                EmbedHttpServer.this.handle(str, strTrim, map, bodyInputStream, responseOutputStream);
                responseOutputStream.close();
                socket = this.conn;
            } catch (Exception unused) {
                socket = this.conn;
                if (socket != null) {
                }
            } catch (Throwable th) {
                Socket socket2 = this.conn;
                if (socket2 != null) {
                    try {
                        socket2.close();
                    } catch (Exception unused2) {
                    }
                }
                EmbedHttpServer.this.latestSocket.compareAndSet(this.conn, null);
                throw th;
            }
            if (socket != null) {
                try {
                    socket.close();
                } catch (Exception unused3) {
                }
            }
            EmbedHttpServer.this.latestSocket.compareAndSet(this.conn, null);
        }
    }

    private static class BodyInputStream extends InputStream {
        private InputStream ins;
        private int n;

        @Override // java.io.InputStream
        public boolean markSupported() {
            return false;
        }

        public BodyInputStream(InputStream inputStream, int i) {
            this.ins = inputStream;
            this.n = i;
        }

        @Override // java.io.InputStream
        public int available() throws IOException {
            return this.n;
        }

        @Override // java.io.InputStream
        public int read() throws IOException {
            if (this.n <= 0) {
                return -1;
            }
            int i = this.ins.read();
            if (i != -1) {
                this.n--;
            }
            return i;
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i, int i2) throws IOException {
            int i3 = this.n;
            if (i3 <= 0) {
                return -1;
            }
            InputStream inputStream = this.ins;
            if (i2 >= i3) {
                i2 = i3;
            }
            int i4 = inputStream.read(bArr, i, i2);
            if (i4 != -1) {
                this.n -= i4;
            }
            return i4;
        }

        @Override // java.io.InputStream
        public long skip(long j) throws IOException {
            throw new IOException("unsupported");
        }

        @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.ins.close();
        }

        @Override // java.io.InputStream
        public synchronized void mark(int i) {
            throw new UnsupportedOperationException();
        }

        @Override // java.io.InputStream
        public synchronized void reset() throws IOException {
            throw new IOException("unsupported");
        }
    }

    public static class ResponseOutputStream extends OutputStream {
        private static final byte[] CRLF = {13, 10};
        private int lv;
        private OutputStream os;

        public ResponseOutputStream(OutputStream outputStream) {
            this.os = outputStream;
        }

        public void setStatusCode(int i) throws IOException {
            if (i == 206) {
                setStatusLine("206 Partial Content");
                return;
            }
            if (i == 301) {
                setStatusLine("301 Moved Permanently");
                return;
            }
            if (i == 304) {
                setStatusLine("304 Not Modified");
                return;
            }
            if (i == 400) {
                setStatusLine("400 Bad Request");
                return;
            }
            if (i == 401) {
                setStatusLine("401 Unauthorized");
                return;
            }
            if (i == 500) {
                setStatusLine("500 Internal Server Error");
                return;
            }
            if (i != 501) {
                switch (i) {
                    case 200:
                        setStatusLine("200 OK");
                        break;
                    case 201:
                        setStatusLine("201 Created");
                        break;
                    case 202:
                        setStatusLine("202 Accepted");
                        break;
                    default:
                        switch (i) {
                            case 403:
                                setStatusLine("403 Forbidden");
                                break;
                            case SharedVideoView.MEDIA_ERROR_FILE_NOT_EXISTS /* 404 */:
                                setStatusLine("404 Not Found");
                                break;
                            case 405:
                                setStatusLine("405 Method Not Allowed");
                                break;
                            default:
                                setStatusLine(String.valueOf(i));
                                break;
                        }
                }
                return;
            }
            setStatusLine("501 Not Implemented");
        }

        public void setStatusLine(String str) throws IOException {
            if (this.lv == 0) {
                this.os.write("HTTP/1.1 ".getBytes("ASCII"));
                this.os.write(str.getBytes("ASCII"));
                this.os.write(CRLF);
                this.lv = 1;
                return;
            }
            throw new IOException("status line is already set");
        }

        public void setHeader(String str, String str2) throws IOException {
            if (this.lv < 1) {
                setStatusCode(200);
            }
            if (this.lv == 1) {
                this.os.write(str.getBytes("ASCII"));
                this.os.write(58);
                this.os.write(32);
                this.os.write(str2.getBytes("ASCII"));
                this.os.write(CRLF);
                return;
            }
            throw new IOException("headers is already set");
        }

        public void setContentLength(int i) throws IOException {
            setHeader("Content-Length", String.valueOf(i));
        }

        public void setContentEncoding(String str) throws IOException {
            setHeader(HttpConnection.CONTENT_ENCODING, str);
        }

        public void setContentType(String str) throws IOException {
            setHeader("Content-Type", str);
        }

        public void setContentTypeText() throws IOException {
            setContentType("text/plain");
        }

        public void setContentTypeTextUtf8() throws IOException {
            setContentType(ApiRequest.CONTENT_TYPE_TEXT);
        }

        public void setContentTypeHtml() throws IOException {
            setContentType("text/html");
        }

        public void setContentTypeHtmlUtf8() throws IOException {
            setContentType("text/html; charset=utf-8");
        }

        public void setContentTypeBinary() throws IOException {
            setContentType(ApiRequest.CONTENT_TYPE_BINARY);
        }

        public void setContentTypeJson() throws IOException {
            setContentType("application/json");
        }

        public void setContentTypeXml() throws IOException {
            setContentType("text/xml");
        }

        public void setContentTypeZip() throws IOException {
            setContentType("application/zip");
        }

        public void setContentTypeJpeg() throws IOException {
            setContentType("image/jpeg");
        }

        public void setContentTypePng() throws IOException {
            setContentType("image/png");
        }

        @Override // java.io.OutputStream
        public void write(int i) throws IOException {
            if (this.lv < 1) {
                setStatusCode(200);
            }
            if (this.lv < 2) {
                this.os.write(CRLF);
                this.lv = 2;
            }
            this.os.write(i);
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr, int i, int i2) throws IOException {
            if (this.lv < 1) {
                setStatusCode(200);
            }
            if (this.lv < 2) {
                this.os.write(CRLF);
                this.lv = 2;
            }
            this.os.write(bArr, i, i2);
        }

        @Override // java.io.OutputStream, java.io.Flushable
        public void flush() throws IOException {
            this.os.flush();
        }

        @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.lv < 1) {
                setStatusCode(SharedVideoView.MEDIA_ERROR_FILE_NOT_EXISTS);
            }
            if (this.lv < 2) {
                this.os.write(CRLF);
                this.lv = 2;
            }
            if (this.lv < 3) {
                this.os.close();
                this.lv = 3;
            }
        }
    }
}
