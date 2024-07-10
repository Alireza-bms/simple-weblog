<?php

class Post
{
    protected $db;

    public function __construct($db)
    {
        $this->db = $db;
    }

    public function getPage($page_number, $per_page)
    {
        $sql = "SELECT * FROM posts
            ORDER BY posted_at DESC
            LIMIT $per_page OFFSET " . (($page_number - 1) * $per_page);
        $stmt = $this->db->prepare($sql);
        $stmt->execute();
        $posts = $stmt->fetchAll(PDO::FETCH_ASSOC);

        return $posts;
    }

    public function countAll()
    {
        $sql = "SELECT COUNT(*) AS count FROM posts";
        $stmt = $this->db->prepare($sql);
        $stmt->execute();
        $count = $stmt->fetch()['count'];

        return $count;
    }

    public function get($id)
    {
        $sql = "SELECT * FROM posts WHERE id = :id";
        $stmt = $this->db->prepare($sql);
        $stmt->bindParam(':id', $id);
        $stmt->execute();
        if ($stmt->rowCount() <= 0) {
            return null;
        }
        $post = $stmt->fetch(PDO::FETCH_ASSOC);

        return $post;
    }

    public function delete($id)
    {
        $sql = "DELETE FROM posts WHERE id = :id";
        $stmt = $this->db->prepare($sql);
        $stmt->bindParam(':id', $id);
        $stmt->execute();
    }

    public function edit($id, $title, $author_name, $content)
    {
        $sql="UPDATE posts SET title = :title, author_name = :author_name, content = :content WHERE id = :id";
        $stmt=$this->db->prepare($sql);
        $stmt->bindParam(':id', $id);
        $stmt->bindParam(':title', $title);
        $stmt->bindParam(':author_name', $author_name);
        $stmt->bindParam(':content', $content);
        $stmt->execute();
    }
}
